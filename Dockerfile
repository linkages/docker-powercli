FROM vmware/powerclicore

SHELL [ "pwsh", "-command" ]
RUN Update-Help
RUN Set-PowerCLIConfiguration -Scope User -ParticipateInCeip $false -Confirm:$false
RUN Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false