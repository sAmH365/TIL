# 1. 공식 레디스 알핀 버전을 기반으로 시작 (용량이 작고 가벼움)
FROM redis:7.2-alpine

# # 2. 작성자 정보 (생략 가능)
# LABEL maintainer="yourname@email.com"

# 3. redis.conf 설정 파일을 컨테이너 내부로 복사
COPY redis.conf /usr/local/etc/redis/redis.conf

# 4. 레디스 기본 포트 6379 노출
EXPOSE 6379

# 5. 복사한 설정 파일을 적용하여 레디스 서버 실행
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
