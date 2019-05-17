-- Return the schema, function name, parameters and function body for a given 
-- search term
   SELECT routine_schema, proname, proargnames, prosrc 
     FROM pg_proc AS pg
LEFT JOIN information_schema.routines AS rou ON pg.proname = rou.routine_name
    WHERE prosrc ILIKE '%search_term%';