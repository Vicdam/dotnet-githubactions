FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime

COPY . .

# Exposes a port where we can access our application
EXPOSE 3000
RUN dotnet restore
RUN dotnet build --configuration Release --no-restore
