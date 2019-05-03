FROM microsoft/iis

RUN ["powershell.exe", "Install-WindowsFeature NET-Framework-45-ASPNET"]  
RUN ["powershell.exe", "Install-WindowsFeature Web-Asp-Net45"]
EXPOSE 8081

ENTRYPOINT powershell