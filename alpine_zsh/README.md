### Imagen de Alpine con OH-MY-ZSH

Imagen base Alpine, el script setup_zsh_alpine.sh se encarga de toda la instalacion y configuracion de oh-my-zsh.

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