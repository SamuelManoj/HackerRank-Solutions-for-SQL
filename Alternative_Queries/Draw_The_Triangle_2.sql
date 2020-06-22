SET @Iteration = 0;
SELECT REPEAT(' * ', @Iteration := @Iteration + 1) FROM information_schema.TABLES
WHERE @Iteration < 20;
