# Script para mensaje con cowsay
OS=$(uname -s)                                     # Obtener el nombre del sistema operativo
DISTRO=$(lsb_release -d | awk -F"\t" '{print $2}') # Obtener la distribución (Ubuntu, Arch, etc.)
DATE=$(date '+%A, %d de %B, %Y')                   # Día actual
TIME=$(date '+%H:%M:%S')                           # Hora actual

# Si no se encuentra la distribución (por ejemplo, en macOS), ajusta el valor de DISTRO
if [ -z "$DISTRO" ]; then
  if [ "$OS" == "Darwin" ]; then
    DISTRO="macOS"
  fi
fi

echo -e "$DATE ($TIME) \n$OS ($DISTRO) " | cowsay -f stegosaurus | lolcat
