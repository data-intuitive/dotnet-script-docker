FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine

ARG DNV=1.2.1

RUN dotnet tool install -g dotnet-script --version ${DNV}

ENV PATH="${PATH}:/root/.dotnet/tools"

WORKDIR /scripts

ENTRYPOINT ["dotnet-script"]