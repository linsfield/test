CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `liberal_arts` AS
    SELECT 
        `student`.`stuID` AS `stuID`,
        `score`.`stuExamID` AS `stuExamID`,
        `student`.`stuName` AS `stuName`,
        `score`.`scoEnterScore` AS `scoEnterScore`,
        `score`.`scoCharScore` AS `scoCharScore`,
        (CASE `score`.`stuType`
            WHEN '0' THEN `score`.`scoPhysicsCourseLev`
            WHEN '1' THEN `score`.`scoHistoryCourseLev`
        END) AS `section1`,
        (CASE `score`.`scoOptCourse`
            WHEN 'dl' THEN `score`.`scoGeographyCourseLev`
            WHEN 'sw' THEN `score`.`scoBiologyCourseLev`
            WHEN 'hx' THEN `score`.`scoChemistryCourseLev`
            WHEN 'zz' THEN `score`.`scoPoliticsCourseLev`
        END) AS `section2`
    FROM
        (`score`
        JOIN `student` ON ((`score`.`stuExamID` = `student`.`stuExamID`)))
    WHERE
        ((`score`.`rtype` = '1')
            AND (`score`.`rInformation_level` = '鍚堟牸')
            AND (`score`.`scoGeographyCourseLev` <> 'D')
            AND (`score`.`scoBiologyCourseLev` <> 'D')
            AND (`score`.`scoChemistryCourseLev` <> 'D')
            AND (`score`.`scoHistoryCourseLev` <> 'D')
            AND (`score`.`scoPhysicsCourseLev` <> 'D')
            AND (`score`.`scoPoliticsCourseLev` <> 'D'))
    ORDER BY `score`.`scoProvRank` DESC
