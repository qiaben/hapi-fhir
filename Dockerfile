FROM hapiproject/hapi:latest

# Set environment variables
ENV SPRING_CONFIG_LOCATION=file:///app/config/application.yaml

# Copy custom configuration
COPY application.yaml /app/config/application.yaml

EXPOSE 8080

ENTRYPOINT ["java", "--class-path", "/app/main.war", "-Dloader.path=WEB-INF/classes,WEB-INF/lib,WEB-INF/lib-provided", "org.springframework.boot.loader.launch.PropertiesLauncher"]
