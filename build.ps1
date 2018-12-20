
docker build -t danilbrenner/cakebuild-dotnet:1.1-runner .

docker rmi (docker images -f "dangling=true" -q)

