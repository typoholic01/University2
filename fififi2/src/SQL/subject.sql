--조회용
SELECT * FROM SUBJECT;

SELECT S.SUB_SEQ, S.SUB_NAME
	FROM SUBJECT S
	WHERE S.PROFESSOR_ID='교수1'
	AND S.SUB_PARENT = 0

SELECT *
FROM SUBJECT s, ASSESSMENT a
WHERE s.sub_seq = a.SUB_SEQ_NUM(+)

SELECT *
FROM SUBJECT s, ASSESSMENT a
WHERE s.sub_seq = a.SUB_SEQ_NUM(+)
AND a.SUB_SEQ_NUM IS NULL

--칼럼추가
ALTER TABLE SUBJECT ADD(SUB_STATUS VARCHAR2(10) default '개강'); 
alter table SUBJECT modify SUB_STATUS not null;