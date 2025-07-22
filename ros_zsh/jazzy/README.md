La imagen es de ros jazzy base, le agrega y configura zsh, y sourceo default de ros

Crear el contenedor con acceso a interfaz grafica

# Dar acceso a docker a interfaz grafica X11 (ejecutar en el host)
xhost +local:docker

# Crear contenedor con acceso a X11 y a gpu nvidia (simulacion), y volumen workspace
docker create --name ros_jazzy \
--gpus all \
-e NVIDIA_DRIVER_CAPABILITIES=graphics,compute,utility \
-e __NV_PRIME_RENDER_OFFLOAD=1 \
-e __GLX_VENDOR_LIBRARY_NAME=nvidia \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $PWD:/workspace \
-i -t \
ros_zsh:jazzy

PAQUETES ROS2 (OPCIONALES)

GAZEBO SIMULATION:
ros-jazzy-ros-gz (Gazebo-ROS)
