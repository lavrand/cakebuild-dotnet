
docker build -t cakebuild-dotnet:1.0-runner .

docker rmi (docker images -f "dangling=true" -q)

