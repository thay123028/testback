# Base image로 openjdk 17을 사용
FROM openjdk:17-jdk-slim
# RUN = 컨테이너에서 실행할 명령어, 컨테이너를 준비하기 위한 명령어
# RUN apt update
# RUN apt intall net-tools
COPY ./build/libs/demo30-0.0.1-SNAPSHOT.jar  /app.jar
# ADD = COPY + 추가 기능(압축 해제, URL)
# ADD
# docker run -dit my_image bash 처럼 특정 이미지에서 마지막에 명령어를
# 입력해서 실행할 때 CMD는 입력한 명령어로 덮어쓰기 돼고, ENTRYPOINT 유지
# ENTRYPOINT  pwd
CMD ["java","-jar","/app.jar"]


# ENV = 환경 변수 설정, 문서화 역할, 기본값 설정
# EXPOSE = 포트포워딩 설정, 문서화 역할



