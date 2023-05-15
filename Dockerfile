FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /app

COPY . .
COPY . ./
RUN dotnet restore
RUN dotnet publish -c Release -o out
# ENTRYPOINT ["sh"]
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app
COPY --from=build /app/out .

ENTRYPOINT ["dotnet", "DemoNginx.Api.dll"]
# ENTRYPOINT ["sh"]