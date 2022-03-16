-- Develop a way to obtain the weekly average number of trips for an area, defined by a bounding box (given by coordinates) or by a region.

CREATE OR REPLACE VIEW `platinum-voice-302121.jobsity_trusted.weekly_average_number_of_trip` as 
-- # Weekly Average Number of Trips by a region.
with trips_per_week_and_region as (
    select count(*) as cnt, extract(WEEK from datetime) as week_num, region
    from `platinum-voice-302121.jobsity_trusted.TRIPS` 
    group by week_num, region
)
select avg(cnt) as weekly_average_number_of_trips, region from trips_per_week_and_region
group by region;