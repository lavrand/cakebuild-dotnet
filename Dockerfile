FROM mono:latest

RUN apt-get update && apt-get -y install libicu-dev \
    && curl -L -o /tmp/dotnet-install.sh https://dot.net/v1/dotnet-install.sh \
    && chmod +x tmp/dotnet-install.sh \
    && ./tmp/dotnet-install.sh -c Current \
    && export PATH=$PATH:/root/.dotnet \
    && echo "export PATH=$PATH:/root/.dotnet" >> ~/.bashrc \
    && dotnet help