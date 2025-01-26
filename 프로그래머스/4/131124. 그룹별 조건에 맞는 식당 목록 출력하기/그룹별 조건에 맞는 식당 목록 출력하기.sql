-- 코드를 입력하세요
SELECT mp.MEMBER_NAME, rr.REVIEW_TEXT, DATE_FORMAT(rr.REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
FROM MEMBER_PROFILE mp JOIN REST_REVIEW rr ON mp.MEMBER_ID = rr.MEMBER_ID
WHERE rr.MEMBER_ID = (
    SELECT MEMBER_ID 
    FROM REST_REVIEW 
    GROUP BY MEMBER_ID
    ORDER BY COUNT(MEMBER_ID) DESC
    LIMIT 1
)
ORDER BY REVIEW_DATE ASC, REVIEW_TEXT ASC
