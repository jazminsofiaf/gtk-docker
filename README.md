
1. fist build docker image<br />
    ```docker build --progress=plain  --no-cache -t gtkimage .```<br />

2. set your ip as env var<br />
```export MY_IP=<local ipv4>```<br />
3. run docker-compose to get into docker image <br />
```docker-compose run app```<br />
4. inside docker image run<br />
```cd root/my-gtk-app/```<br />
```~/my-gtk-app# cargo run --bin app2```<br />

check if a gtk window is display<br />
