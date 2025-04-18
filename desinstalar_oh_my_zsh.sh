#!/bin/bash

echo "🚫 Desinstalando Oh My Zsh y dejando el sistema limpio..."

# Cambiar shell por defecto a bash
if [ "$SHELL" != "/bin/bash" ]; then
  echo "🔄 Cambiando shell por defecto a bash..."
  chsh -s /bin/bash
else
  echo "✔️ Ya estás usando bash como shell por defecto."
fi

# Borrar archivos de configuración de zsh
echo "🗑️ Eliminando archivos de configuración de Zsh..."
rm -f ~/.zshrc ~/.p10k.zsh ~/.zprofile ~/.zlogin ~/.zlogout ~/.zshenv

# Borrar Oh My Zsh
echo "🧹 Eliminando Oh My Zsh..."
rm -rf ~/.oh-my-zsh

# Borrar tema Powerlevel10k si existe
echo "🧼 Eliminando Powerlevel10k..."
rm -rf ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
rm -rf ~/.powerlevel10k

# Borrar cualquier backup del instalador de oh-my-zsh
rm -f ~/.zshrc.pre-oh-my-zsh

echo "✅ Terminal limpiada. Reiniciá o abrí una nueva terminal para usar bash normalmente."
