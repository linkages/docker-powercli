# docker-powercli
This container is based on upstream vmware/powerclicore container. It used to be based on microsoft/powershell but I changed since this has a slightly smaller footprint ( ~90Mb )

It also disables certificate validation for powercli by running the following command:

Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false

and opts out of the CEIP from VMware with the following command:

Set-PowerCLIConfiguration -Scope User -ParticipateInCeip $false -Confirm:$false

I know this is "wrong" but I need to use it in some environments since they are new enough that I don't have certificates yet or never will.

I usually run this container with the following command:

docker container run -it --rm -v <where I keep scripts>:/powershell/scripts linkages/powercli