FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /source

COPY . .
RUN dotnet publish-o /app

# final stage/image
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app .
# 👇 set to use the non-root USER here
USER $APP_UID 
ENTRYPOINT ["./aspnetapp"]

# Expose port 80
EXPOSE 80
