# docker-powercli
This container is based on upstream microsoft/powershell with the latest powercli installed via the PowerShell gallery.

It also disables certificate validation for powercli by running the following command:

Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false

I know this is "wrong" but I need to use it in some environments since they are new enough that I don't have certificates yet or never will.

I usually run this container with the following command:

docker container run -it --rm -v <where I keep scripts>:/powershell/scripts linkages/powercli