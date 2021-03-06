## 데이터 불러오기 ggplot2 package > "midwest"
library(ggplot2)
midwest_raw <- as.data.frame(midwest)
midwest_temp <- midwest_raw


str(midwest_temp)


.# popasian(아시안 인구) 변수를 asian으로 수정하세요.
midwest_temp <- dplyr::rename(midwest_temp, asian = popasian)

str(midwest_temp)


# [문제]
# poptotal, asian 변수를 이용해 '전체 인구 대비 아시아 인구 백분율' percasian 파생변수를 만들고,
# 히스토그램을 만들어 도시들이 어떻게 분포하는지 살펴보세요.

midwest_temp$percasian <- 1
str(midwest_temp)

midwest_temp$percasian <- midwest_temp$asian / midwest_temp$poptotal
str(midwest_temp)



ggplot(data = midwest_temp,
       aes(x = percasian,
           y = county)) + 
  geom_histogram(stat = 'identity')



# [문제]
# 아시아 인구 백분율 전체 평균을 구하고, 
# 평균을 초과하면 "large", 
# 그 외에는 "small"을 부여하는 mean 파생변수를 만들어 보세요.


midwest_temp



# [문제]
# "large"와 "small"에 해당하는 지역이 얼마나 되는지 빈도표와 
# 빈도 막대 그래프를 만들어 확인해 보세요.

# ggplot2의 midwest 데이터를 사용하여 데이터 분석을 실습하는 문제 입니다.

# popadults는 해당 지역의 성인 인구, 
# poptotal은 전체 인구를 나타냅니다. 

# 1번 문제
# midwest 데이터에 '전체 인구 대비 미성년 인구 백분율' 변수를 추가하세요.


# 2번 문제
# 미성년 인구 백분율이 가장 높은 상위 5개 county(지역)의 
# 미성년 인구 백분율을 출력하시오.

# 3번 문제
# 다음과 같은 분류표의 기준에 따라 미성년 비율 등급 변수를 추가하고, 
# 각 등급에 몇 개의 지역이 있는지 알아보세요.

# 분류     기준
# large    40%이상
# middle   30 ~ 40미만
# small    30미만

# 4번 문제
# popasian은 해당 지역의 아시아인 인구를 나타냅니다. 
# '전체 인구 대비 아시아인 인구 백분율' 변수를 추가하고 
# 하위 10개 지역의 state(주), county(지역), 아시아인 인구 백분율을 출력하세요.
