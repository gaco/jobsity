-- What regions has the "cheap_mobile" datasource appeared in?
select distinct region from `platinum-voice-302121.jobsity_trusted.TRIPS`
where datasource = 'cheap_mobile';