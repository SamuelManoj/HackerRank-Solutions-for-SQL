SET @Iteration = 21;
SELECT REPEAT('* ', @Iteration := @Iteration - 1) FROM information_schema.TABLES;
