FROM mcr.microsoft.com/windows/servercore/iis

RUN ["powershell.exe", "Install-WindowsFeature NET-Framework-45-ASPNET"]  
RUN ["powershell.exe", "Install-WindowsFeature Web-Asp-Net45"]
WORKDIR /inetpub/wwwroot
EXPOSE 8081

ENTRYPOINT powershell