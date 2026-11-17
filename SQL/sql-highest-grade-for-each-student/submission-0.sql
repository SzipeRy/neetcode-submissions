-- Write your query below
WITH student_score AS
(
    select student_id, MAX(score) as score
    from exam_results
    group by student_id
)

select ss.student_id, min(exam_id) as exam_id, ss.score
from student_score ss
join exam_results ex on ss.student_id = ex.student_id and ss.score=ex.score
group by ss.student_id, ss.score
ORDER BY ss.student_id asc