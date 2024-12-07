SELECT s.student_id, s.student_name, sub.subject_name, COUNT(e.student_id) as attended_exams FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e
    ON e.student_id = s.student_id
    AND e.subject_name = sub.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
