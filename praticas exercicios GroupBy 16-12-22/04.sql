SELECT MAX(jobs.salary ) AS "maximumSalary", roles.name AS "role" 
FROM jobs JOIN roles ON jobs."roleId" = roles.id
WHERE active=true GROUP BY "role" order by "maximumSalary" DESC;