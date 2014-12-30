CREATE DEFINER=`root`@`localhost` PROCEDURE `set_rank`(in scoExamYear YEAR ,in stuType BOOL)
BEGIN
set @tempCharScore = -1.0;
set @tempCharactScore = -1.0;
set @TempRank = 0;
set @order_num = 0;

UPDATE score,
    (SELECT 
        scoCharScore,
            scoEnterScore,
            stuExamID,
            @order_num:=@order_num + 1,
            IF(@tempCharScore = scoCharScore
                AND @tempScore = scoEnterScore, @TempRank, @TempRank:=@order_num) AS scoProvRank,
            @tempCharScore:=scoCharScore,
            @tempScore:=scoEnterScore
    FROM
        score
    ORDER BY scoEnterScore DESC , scoCharScore DESC) AS t 
SET 
    score.scoProvRank = t.scoProvRank
WHERE
    score.stuExamID = t.stuExamID
        AND score.scoExamYear = scoExamYear
        AND score.stuType = stuType;
END
