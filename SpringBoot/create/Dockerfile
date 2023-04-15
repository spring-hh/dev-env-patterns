FROM tomcat:10.1.1-jdk17
WORKDIR /code
RUN apt-get update && apt-get install -y unzip zip
RUN curl -s "https://get.sdkman.io" | bash
RUN bash -c "source /root/.sdkman/bin/sdkman-init.sh && sdk install springboot"
COPY . .