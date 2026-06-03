* 도커 컨테이너 내 redis-cli 실행
  * `docker exec -it my-redis-app redis-cli`
* 비밀번호 인증
  * `AUTH secret`
  * 레디스 설정파일에 `requirepass` 옵션 안주면 비밀번호 인증 필요없음
    * [redis.conf 참조](redis.conf)