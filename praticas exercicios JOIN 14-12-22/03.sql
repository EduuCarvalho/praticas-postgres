SELECT users.id, users.name, courses.name AS course, schools.name AS school, educations."endDate" FROM users JOIN educations ON users.id = educations."userId"
JOIN courses ON educations."courseId" = courses.id
JOIN schools ON educations."schoolId" = schools.id
WHERE users.id=30 AND educations.status='finished'
;


|---id---|---name---|---course---|----school----|---endDate---|
    1        João      HTML/CSS       Driven       2021-12-01
    2        João      JavaScript     Driven       2022-01-20
   ...        ...         ...           ...          ...