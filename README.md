# Publishing and Deploying app

## Steps

- Generate appropriate [Git tags](https://www.atlassian.com/git/tutorials/inspecting-a-repository/git-tag), [Git tag documentation](https://git-scm.com/docs/git-tag) for more information.

- Create appropriate published app. Either self-contained or framework-dependent, using either Visual Studio or terminal. [Self-Contained Publishing](https://learn.microsoft.com/en-us/dotnet/core/deploying/#publish-self-contained) & [dotnet publish documentation](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-publish).
  <br/>Basically run `dotnet publish --self-contained -r <RID> -c Release` where `<RID>` is the runtime identifier for the target platform. For example, `win-x64` for Windows 64-bit. The resulting output is a folder with the app and all its dependencies. The app can be run by executing the app's executable file.

- Create a [Docker image](https://learn.microsoft.com/en-us/dotnet/core/docker/introduction). <br/>[How to make image with .NET SDK](https://learn.microsoft.com/en-us/dotnet/core/docker/publish-as-container?pivots=dotnet-8-0)

- Make appropriate preparations for online services if needed. For this app, I will use [Azure Container Apps](https://azure.microsoft.com/en-us/products/container-apps/), which requires [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli). <br/> [How to publish to Azure Container Apps](https://learn.microsoft.com/en-us/azure/container-apps/get-started?tabs=azure-powershell)

## Important notes

- Self-contained publishing does not need users to have .NET runtimes. Framework-dependent publishing does. Both are platform dependent so important to specify the runtime identifier, otherwise it defaults to the currently used platform.
- Docker images/containers can either be created in Docker or at the same time when publishing .NET apps. Both ways require Docker to run.
- Git tags default to lightweight tags. Consider using an alias for annotated tags as they are generally more useful.
