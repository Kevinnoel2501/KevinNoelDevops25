#build
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

COPY RandomSentenceApp/RandomSentenceApp.csproj RandomSentenceApp/

RUN dotnet restore RandomSentenceApp/RandomSentenceApp.csproj

# copy just app source (exclude tests)
COPY RandomSentenceApp/ RandomSentenceApp/

RUN dotnet publish RandomSentenceApp/RandomSentenceApp.csproj \
    -c Release \
    -o /app/publish \
    --no-restore

# final image , get the built files from previous stg
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

COPY --from=build /app/publish .

ENTRYPOINT ["dotnet", "RandomSentenceApp.dll"]