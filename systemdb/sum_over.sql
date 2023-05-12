--
SELECT * 
FROM employee;

-- 부서별 소계와 총액이 500만원 이상인 자료 검색
SELECT deptno, SUM(sal)
FROM employee
GROUP BY deptno
HAVING SUM(sal) > 5000000;

--급여 누적값 계산
--SUN(칼럼명) OVER(ORDER BY 칼럼명)
SELECT empno 사원번호, 
        ename 이름,
        sal 급여,
        SUM(sal) OVER(ORDER BY empno) "sal_sum", --오름차순 누적
        SUM(sal) OVER(ORDER BY empno --오름차순 누적 (이전행과 현재행 더하기)
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)"sal_sum2",
        SUM(sal) OVER(ORDER BY empno --내림차순 누적 (현재행과 이전행 더하기)
            ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING)"sal_sum3"
FROM employee;        