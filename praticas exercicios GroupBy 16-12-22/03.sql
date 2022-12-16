SELECT users.name AS writer, COUNT (testimonials."writerId") AS "testimonialsCount"
FROM users JOIN testimonials ON testimonials."writerId"=users.id WHERE users.id=435GROUP BY users.id;


