-- P1-5-1-select-all-activities.sql

-- insertion d'une activités récentes

INSERT INTO public.activity VALUES (100, 'Yoga', 'Activité loisir Yoga', '2020-01-21 11:30:00', '2020-01-21 11:30:00');
INSERT INTO public.activity VALUES (101, 'Tai Chi', 'Activité Taichi', '2020-01-21 11:30:00', '2020-01-21 11:30:00', 101);


SELECT title, description, username
FROM activity 
LEFT JOIN "user" ON owner_id = "user".id
WHERE creation_date > '2019-09-01'
ORDER BY title, username;

