
1. fist build docker image
    ```docker build --progress=plain  --no-cache -t gtkimage .```

2. set your ip as env var
```export MY_IP=<local ipv4>```
3. run docker-compose to get into docker image 
```docker-compose run app```
4. inside docker image run
```cd root/my-gtk-app/```
```~/my-gtk-app# cargo run --bin app2```

check if a gtk window is display
