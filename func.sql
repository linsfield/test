CREATE DEFINER=`root`@`localhost` FUNCTION `CalLev`(`score` DOUBLE) RETURNS enum('A','B','C','D') CHARSET utf8
BEGIN
	if score>=90 then
		return 'A+';
	elseif score>=75 then
		return 'B';
	elseif score >= 60 then
		return 'C';
	else
		return 'D';
	end if;
END
