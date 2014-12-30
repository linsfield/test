CREATE DEFINER=`root`@`localhost` PROCEDURE `set_opt`(in scoExamYear int)
BEGIN

declare num_student, num_aplus, num_a, num_bplus, num_b, num_c integer;
declare score_aplus, score_a, score_bplus, score_b, score_c integer;

drop temporary table if exists temp;
create temporary table temp (
	score int
)
as (
	select scoPhysicsCourse as score from score
    where stuType='0'
    order by scoPhysicsCourse desc
);

set num_student = (select count(*) from temp);
set num_aplus = (round(num_student*0.05));
set num_a = (round(num_student*0.2));
set num_bplus = (round(num_student*0.3));
set num_b = (round(num_student*0.5));
set num_c = (round(num_student*0.9));

set score_aplus = (select score from temp limit num_aplus,1);
set score_a = (select score from temp limit num_a,1);
set score_bplus = (select score from temp limit num_bplus,1);
set score_b = (select score from temp limit num_b,1);
set score_c = (select score from temp limit num_c,1);

UPDATE score 
SET 
    scoPhysicsCourseLev = 'A+'
WHERE
    scoPhysicsCourse >= score_aplus;
UPDATE score 
SET 
    scoPhysicsCourseLev = 'A'
WHERE
    scoPhysicsCourse >= score_a
        AND scoPhysicsCourse < score_aplus;
UPDATE score 
SET 
    scoPhysicsCourseLev = 'B+'
WHERE
    scoPhysicsCourse >= score_bplus
        AND scoPhysicsCourse < score_a;
UPDATE score 
SET 
    scoPhysicsCourseLev = 'B'
WHERE
    scoPhysicsCourse >= score_b
        AND scoPhysicsCourse < score_bplus;
UPDATE score 
SET 
    scoPhysicsCourseLev = 'C'
WHERE
    scoPhysicsCourse >= score_c
        AND scoPhysicsCourse < score_b;
UPDATE score 
SET 
    scoPhysicsCourseLev = 'D'
WHERE
    scoPhysicsCourse < score_c;

drop temporary table if exists temp;
create temporary table temp (
	score int
)
as (
	select scoHistoryCourse as score from score
    where stuType='1' 
    order by scoHistoryCourse desc
);

set num_student = (select count(*) from temp);
set num_aplus = (round(num_student*0.05));
set num_a = (round(num_student*0.2));
set num_bplus = (round(num_student*0.3));
set num_b = (round(num_student*0.5));
set num_c = (round(num_student*0.9));

set score_aplus = (select score from temp limit num_aplus,1);
set score_a = (select score from temp limit num_a,1);
set score_bplus = (select score from temp limit num_bplus,1);
set score_b = (select score from temp limit num_b,1);
set score_c = (select score from temp limit num_c,1);

UPDATE score 
SET 
    scoHistoryCourseLev = 'A+'
WHERE
    scoHistoryCourse >= score_aplus;
UPDATE score 
SET 
    scoHistoryCourseLev = 'A'
WHERE
    scoHistoryCourse >= score_a
        AND scoHistoryCourse < score_aplus;
UPDATE score 
SET 
    scoHistoryCourseLev = 'B+'
WHERE
    scoHistoryCourse >= score_bplus
        AND scoHistoryCourse < score_a;
UPDATE score 
SET 
    scoHistoryCourseLev = 'B'
WHERE
    scoHistoryCourse >= score_b
        AND scoHistoryCourse < score_bplus;
UPDATE score 
SET 
    scoHistoryCourseLev = 'C'
WHERE
    scoHistoryCourse >= score_c
        AND scoHistoryCourse < score_b;
UPDATE score 
SET 
    scoHistoryCourseLev = 'D'
WHERE
    scoHistoryCourse < score_c;

drop temporary table if exists temp;
create temporary table temp (
	score int
)
as (
	select scoPoliticsCourse as score from score
    where scoOptCourse='zz'
    order by scoPoliticsCourse desc
);

set num_student = (select count(*) from temp);
set num_aplus = (round(num_student*0.05));
set num_a = (round(num_student*0.2));
set num_bplus = (round(num_student*0.3));
set num_b = (round(num_student*0.5));
set num_c = (round(num_student*0.9));

set score_aplus = (select score from temp limit num_aplus,1);
set score_a = (select score from temp limit num_a,1);
set score_bplus = (select score from temp limit num_bplus,1);
set score_b = (select score from temp limit num_b,1);
set score_c = (select score from temp limit num_c,1);

UPDATE score 
SET 
    scoPoliticsCourseLev = 'A+'
WHERE
    scoPoliticsCourse >= score_aplus;
UPDATE score 
SET 
    scoPoliticsCourseLev = 'A'
WHERE
    scoPoliticsCourse >= score_a
        AND scoPoliticsCourse < score_aplus;
UPDATE score 
SET 
    scoPoliticsCourseLev = 'B+'
WHERE
    scoPoliticsCourse >= score_bplus
        AND scoPoliticsCourse < score_a;
UPDATE score 
SET 
    scoPoliticsCourseLev = 'B'
WHERE
    scoPoliticsCourse >= score_b
        AND scoPoliticsCourse < score_bplus;
UPDATE score 
SET 
    scoPoliticsCourseLev = 'C'
WHERE
    scoPoliticsCourse >= score_c
        AND scoPoliticsCourse < score_b;
UPDATE score 
SET 
    scoPoliticsCourseLev = 'D'
WHERE
    scoPoliticsCourse < score_c;

drop temporary table if exists temp;
create temporary table temp (
	score int
)
as (
	select scoGeographyCourse as score from score
    where scoOptCourse='dl'
    order by scoGeographyCourse desc
);

set num_student = (select count(*) from temp);
set num_aplus = (round(num_student*0.05));
set num_a = (round(num_student*0.2));
set num_bplus = (round(num_student*0.3));
set num_b = (round(num_student*0.5));
set num_c = (round(num_student*0.9));

set score_aplus = (select score from temp limit num_aplus,1);
set score_a = (select score from temp limit num_a,1);
set score_bplus = (select score from temp limit num_bplus,1);
set score_b = (select score from temp limit num_b,1);
set score_c = (select score from temp limit num_c,1);

UPDATE score 
SET 
    scoGeographyCourse_level = 'A+'
WHERE
    scoGeographyCourse >= score_aplus;
UPDATE score 
SET 
    scoGeographyCourse_level = 'A'
WHERE
    scoGeographyCourse >= score_a
        AND scoGeographyCourse < score_aplus;
UPDATE score 
SET 
    scoGeographyCourse_level = 'B+'
WHERE
    scoGeographyCourse >= score_bplus
        AND scoGeographyCourse < score_a;
UPDATE score 
SET 
    scoGeographyCourse_level = 'B'
WHERE
    scoGeographyCourse >= score_b
        AND scoGeographyCourse < score_bplus;
UPDATE score 
SET 
    scoGeographyCourse_level = 'C'
WHERE
    scoGeographyCourse >= score_c
        AND scoGeographyCourse < score_b;
UPDATE score 
SET 
    scoGeographyCourse_level = 'D'
WHERE
    scoGeographyCourse < score_c;

drop temporary table if exists temp;
create temporary table temp (
	score int
)
as (
	select scoChemisrtyCourse as score from score
    where scoOptCourse='hx'
    order by scoChemisrtyCourse desc
);

set num_student = (select count(*) from temp);
set num_aplus = (round(num_student*0.05));
set num_a = (round(num_student*0.2));
set num_bplus = (round(num_student*0.3));
set num_b = (round(num_student*0.5));
set num_c = (round(num_student*0.9));

set score_aplus = (select score from temp limit num_aplus,1);
set score_a = (select score from temp limit num_a,1);
set score_bplus = (select score from temp limit num_bplus,1);
set score_b = (select score from temp limit num_b,1);
set score_c = (select score from temp limit num_c,1);

UPDATE score 
SET 
    scoChemistryCourseLev = 'A+'
WHERE
    scoChemisrtyCourse >= score_aplus;
UPDATE score 
SET 
    scoChemistryCourseLev = 'A'
WHERE
    scoChemisrtyCourse >= score_a
        AND scoChemisrtyCourse < score_aplus;
UPDATE score 
SET 
    scoChemistryCourseLev = 'B+'
WHERE
    scoChemisrtyCourse >= score_bplus
        AND scoChemisrtyCourse < score_a;
UPDATE score 
SET 
    scoChemistryCourseLev = 'B'
WHERE
    scoChemisrtyCourse >= score_b
        AND scoChemisrtyCourse < score_bplus;
UPDATE score 
SET 
    scoChemistryCourseLev = 'C'
WHERE
    scoChemisrtyCourse >= score_c
        AND scoChemisrtyCourse < score_b;
UPDATE score 
SET 
    scoChemistryCourseLev = 'D'
WHERE
    scoChemisrtyCourse < score_c;

drop temporary table if exists temp;
create temporary table temp (
	score int
)
as (
	select scoBiologyCourse as score from score
    where scoOptCourse='sw'
    order by scoBiologyCourse desc
);

set num_student = (select count(*) from temp);
set num_aplus = (round(num_student*0.05));
set num_a = (round(num_student*0.2));
set num_bplus = (round(num_student*0.3));
set num_b = (round(num_student*0.5));
set num_c = (round(num_student*0.9));

set score_aplus = (select score from temp limit num_aplus,1);
set score_a = (select score from temp limit num_a,1);
set score_bplus = (select score from temp limit num_bplus,1);
set score_b = (select score from temp limit num_b,1);
set score_c = (select score from temp limit num_c,1);

UPDATE score 
SET 
    scoBiologyCourseLev = 'A+'
WHERE
    scoBiologyCourse >= score_aplus;
UPDATE score 
SET 
    scoBiologyCourseLev = 'A'
WHERE
    scoBiologyCourse >= score_a
        AND scoBiologyCourse < score_aplus;
UPDATE score 
SET 
    scoBiologyCourseLev = 'B+'
WHERE
    scoBiologyCourse >= score_bplus
        AND scoBiologyCourse < score_a;
UPDATE score 
SET 
    scoBiologyCourseLev = 'B'
WHERE
    scoBiologyCourse >= score_b
        AND scoBiologyCourse < score_bplus;
UPDATE score 
SET 
    scoBiologyCourseLev = 'C'
WHERE
    scoBiologyCourse >= score_c
        AND scoBiologyCourse < score_b;
UPDATE score 
SET 
    scoBiologyCourseLev = 'D'
WHERE
    scoBiologyCourse < score_c;
END
