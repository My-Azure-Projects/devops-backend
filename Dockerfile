# Use the official microsoft .NET Core SDK as parent image
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /build
# Copy the contents of host source folder to the working directory /build
COPY . .

# Restore dependencies and publish/build the WebAPI project to the /app directoy
RUN dotnet restore
RUN dotnet publish src/DevopsLectureBackend.csproj --configuration Release --output /app

# Run the app using the official microsoft ASP.NET Core Runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS final
WORKDIR /app

# Copy the contents of the /app folder from the build image to the current working directory /app
COPY --from=build /app .
ENTRYPOINT ["dotnet", "DevopsLectureBackend.dll"]



