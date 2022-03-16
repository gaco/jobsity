-- From the two most commonly appearing regions, which is the latest datasource?
with top2_most_commonly_appearing_regions as (
    select region, count(*) cnt
    from `platinum-voice-302121.jobsity_trusted.TRIPS`
    group by region limit 2
),
latest_record_by_region as (
    select 
        trips.*,
        row_number() over (partition by trips.region order by datetime desc) rn 
    from
    `platinum-voice-302121.jobsity_trusted.TRIPS` trips
    inner join top2_most_commonly_appearing_regions top 
        on (top.region = trips.region)
)
select region, datasource from latest_record_by_region
where rn = 1;