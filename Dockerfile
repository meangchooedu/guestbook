FROM openjdk:8

ARG VERSION

COPY target/guestbook-0.0.1-SNAPSHOT.jar /app/guestbook.jar

<<<<<<< HEAD
LABEL maintainer="meangchoo.edu" \
=======
LABEL maintainer="meangchoo.edu>" \
>>>>>>> e5772343f723e5e8ef2080072813a20ded61c531
      title="Guestbook App" \
      version="$VERSION" \
      description="This image is guestbook service"

ENV APP_HOME /app
EXPOSE 8080
VOLUME /app/upload

WORKDIR $APP_HOME
ENTRYPOINT ["java"]
CMD ["-jar", "guestbook.jar"]

