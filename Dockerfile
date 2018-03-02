FROM microsoft/powershell:ubuntu16.04

RUN pwsh -c Set-PSRepository -InstallationPolicy Trusted PSGallery
RUN pwsh -c Install-Module -Name VMware.PowerCLI –Scope CurrentUser
RUN pwsh -c Update-Help
RUN pwsh -c Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:\$false

CMD ["pwsh"]

