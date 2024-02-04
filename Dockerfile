FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env
WORKDIR /QuickPublish

# Copy everything
COPY . ./
# Restore as distinct layers
RUN dotnet restore
# Build and publish a release
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/runtime:8.0
WORKDIR /QuickPublish
COPY --from=build-env /QuickPublish/out .
ENTRYPOINT ["dotnet", "QuickPublish.dll"]