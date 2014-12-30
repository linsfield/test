CREATE DEFINER=`root`@`localhost` PROCEDURE `set_score`(in scoExamYear int)
BEGIN
update score
set scoCharScore=scoChiness+scoMath+scoMathOpt where scoExamYear=scoExamYear;

UPDATE score 
SET 
    scoEnterScore = scoChiness + scoMath + scoMathOpt + scoEnglish + scoAdd
WHERE
    scoExamYear = scoExamYear;
END
