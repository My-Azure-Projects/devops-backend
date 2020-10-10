# Introduction 
This repository contains all the pipelines for the backend project used in the **DevOps: Just do it** presentation.

The pipelines can be found in the following files:
- Azure pipelines - *azure-pipelines.yml*
- Gitlab CI - *.gitlab-ci.yml*
- Github Actuibs - *github\workflows\dontnet-core.yml*
- Circle CI - *.circleci\config.yml*

# Build and Test

To build and run the application:
```
dotnet build
dotnet run --project src/DevopsLectureBackend.csproj
```

To run the tests:

```
dotnet test tests/Tests.csproj
```
