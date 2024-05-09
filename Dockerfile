FROM amazoncorretto:17-alpine // JDK 버전 명시
ARG JAR_FILE=build/libs/*.jar // 앞서 만든 JAR 파일
COPY ${JAR_FILE} app.jar // host에 있는 것을 container에 복사하여 생성
ENTRYPOINT ["java","-jar","/app.jar"]