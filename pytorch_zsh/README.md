### Imagen de Pytorch con OH-MY-ZSH

Imagen base Pytorch (Ubuntu 24 LTS), el script setup_zsh_ubuntu.sh se encarga de toda la instalacion y configuracion de oh-my-zsh.

---

### (IMPORTANTE) CREAR CONTENEDOR CON PERMISOS A GPU

docker create --name pytorch_dev \
--gpus all \
-e NVIDIA_DRIVER_CAPABILITIES=graphics,compute,utility \
-e __NV_PRIME_RENDER_OFFLOAD=1 \
-e __GLX_VENDOR_LIBRARY_NAME=nvidia \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $PWD:/workspace \
-i -t \
ros_zsh:jazzy

---

### Plugins

Plugins orientados a una shell inteligente, con intelliscence.

- Lista: git zsh-autosuggestions zsh-completions fzf-tab

---

### Paquetes (Instalados por Setup)

- **Dependencias de oh-my-zsh**: zsh git wget

- **Dependencias de los plugins**: fzf

- **Paquetes de utilidad**: nano

### Tema

Af-magic por defecto, si deseas cambiarlo 

- Clona este repositorio

- Modifica en Dockerfile la linea ARG ZSH_THEME="af-magic"

- Construye la imagen (desde la carpeta alpine_zsh): docker build -t alpine_zsh:custom . 