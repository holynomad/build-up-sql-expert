# 낚시앱에서 사용하는 FISH_INFO 테이블은 잡은 물고기들의 정보를 담고 있습니다. 
# FISH_INFO 테이블의 구조는 다음과 같으며 ID, FISH_TYPE, LENGTH, TIME은 각각 잡은 물고기의 ID, 물고기의 종류(숫자), 잡은 물고기의 길이(cm), 물고기를 잡은 날짜를 나타냅니다.
# 단, 잡은 물고기의 길이가 10cm 이하일 경우에는 LENGTH 가 NULL 이며, LENGTH 에 NULL 만 있는 경우는 없습니다.

# 잡은 물고기의 평균 길이를 출력하는 SQL문을 작성해주세요.
# 평균 길이를 나타내는 컬럼 명은 AVERAGE_LENGTH로 해주세요.
# 평균 길이는 소수점 3째자리에서 반올림하며, 10cm 이하의 물고기들은 10cm 로 취급하여 평균 길이를 구해주세요.

select  round(sum(ifnull(LENGTH, 10))/count(ifnull(LENGTH, 10)), 2) as AVERAGE_LENGTH
  from  FISH_INFO
  ;

# 잡은 물고기 중 길이가 10cm 이하인 물고기의 수를 출력하는 SQL 문을 작성해주세요.
# 물고기의 수를 나타내는 컬럼 명은 FISH_COUNT로 해주세요.

select  count(ifnull(LENGTH, 999)) as FISH_COUNT
  from  FISH_INFO
 where  LENGTH is null
 ;
