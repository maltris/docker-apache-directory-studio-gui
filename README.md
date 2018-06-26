# docker-apache-directory-studio-gui
Run Apache Directory Studio in a container

# minimal example
```
git clone https://github.com/maltris/docker-apache-directory-studio-gui.git
cd docker-apache-directory-studio-gui

docker build -t ads .

xhost local:root #allow local connections to the x-server
docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix ads
```
