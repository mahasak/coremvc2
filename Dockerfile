FROM microsoft/dotnet:latest
COPY out /app
WORKDIR /app
 
 
EXPOSE 5000/tcp
ENV ASPNETCORE_URLS http://*:5000
 
ENTRYPOINT ["dotnet","/app/coremvc2.dll"]