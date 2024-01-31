# Publishing and Deploying app

[Self-Contained Publishing](https://learn.microsoft.com/en-us/dotnet/core/deploying/#publish-self-contained), [dotnet publish documentation](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-publish).

Basically run `dotnet publish --self-contained -r <RID> -c Release` where `<RID>` is the runtime identifier for the target platform. For example, `win-x64` for Windows 64-bit. The resulting output is a folder with the app and all its dependencies. The app can be run by executing the app's executable file.

[Docker image](https://learn.microsoft.com/en-us/dotnet/core/docker/introduction)
