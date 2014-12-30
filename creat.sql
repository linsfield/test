create schema CollegeEntranceExamination;

	CREATE TABLE school (
    schID VARCHAR(10) PRIMARY KEY NOT NULL UNIQUE,
    schName VARCHAR(45) NOT NULL,
    schMaster VARCHAR(45),
    schTel VARCHAR(20)
);

	CREATE TABLE student (
    stuID VARCHAR(12) NOT NULL UNIQUE,
    stuName VARCHAR(45) NOT NULL,
    stuSex BOOL NOT NULL,
    stuVolk VARCHAR(20) NOT NULL,
    stuMidSch VARCHAR(45) NOT NULL,
    stuGraYear YEAR NOT NULL,
    stuMailAdde VARCHAR(45) NOT NULL,
    stuGuard VARCHAR(45) NOT NULL,
    stuGuardTel VARCHAR(45) NOT NULL,
    stuExamID CHAR(14) NOT NULL UNIQUE,
    stuType BOOL NOT NULL,
    schID VARCHAR(10),
    PRIMARY KEY (stuID , stuExamID),
    FOREIGN KEY (schID)
        REFERENCES school (schID)
);

	CREATE TABLE score (
    stuExamID VARCHAR(14),
    stuType BOOL NOT NULL,
    scoChiness DOUBLE,
    scoMath DOUBLE,
    scoEnglish DOUBLE,
    scoMathOpt DOUBLE,
    scoChinessOpt DOUBLE,
    scoOptCourse ENUM('zz', 'dl', 'hx', 'sw') NOT NULL,
    scoPoliticsCourse DOUBLE,
    scoPoliticsCourseLev ENUM('A+', 'A', 'B+', 'B', 'C', 'D'),
    scoHistoryCourse DOUBLE,
    scoHistoryCourseLev ENUM('A+', 'A', 'B+', 'B', 'C', 'D'),
    scoGeographyCourse DOUBLE,
    scoGeographyCourseLev ENUM('A+', 'A', 'B+', 'B', 'C', 'D'),
    scoPhysicsCourse DOUBLE,
    scoPhysicsCourseLev ENUM('A+', 'A', 'B+', 'B', 'C', 'D'),
    scoChemistryCourse DOUBLE,
    scoChemistryCourseLev ENUM('A+', 'A', 'B+', 'B', 'C', 'D'),
    scoBiologyCourse DOUBLE,
    scoBiologyCourseLev ENUM('A+', 'A', 'B+', 'B', 'C', 'D'),
    scoInfoLev ENUM('PASS', 'FAIL'),
    scoEnterScore DOUBLE,
    scoCharactScore DOUBLE,
    scoProvRank INT,
    scoAdd DOUBLE,
    scoExamYear YEAR NOT NULL,
    PRIMARY KEY (scoExamYear , stuExamID),
    FOREIGN KEY (stuExamID)
        REFERENCES student (stuExamID)
);

DELIMITER $$
CREATE trigger preprocess BEFORE INSERT ON `score` FOR EACH ROW 
BEGIN
	set new.scoPoliticsCourseLev = CalLev(new.scoPoliticsCourse);
	set new.scoHistoryCourseLev = CalLev(new.scoHistoryCourse);
	set new.scoGeographyCourseLev = CalLev(new.scoGeographyCourse);
	set new.scoPhysicsCourseLev = CalLev(new.scoPhysicsCourse);
	set new.scoChemistryCourseLev = CalLev(new.scoChemistryCourse);
	set new.scoBiologyCourseLev = CalLev(new.scoBiologyCourse);
END$$
DELIMITER ;
