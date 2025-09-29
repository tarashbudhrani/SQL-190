WITH final_table AS (
    SELECT 
        person_id,
        name,
        SUBSTRING(profession, 1, 1) AS profession_initial
    FROM Person
)
SELECT person_id , concat(name,'(',profession_initial,')') as name from final_table
order by person_id desc