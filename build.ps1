
docker build -t danilbrenner/cakebuild-dotnet:1.4-runner .

docker rmi (docker images -f "dangling=true" -q)

