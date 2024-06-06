#!/bin/bash

# Não esquecer o "chmod +x setup_aliases.sh"

# Adiciona a verificação e carregamento do arquivo ~/.bash_aliases no ~/.bashrc
if ! grep -q "if [ -f ~/.bash_aliases ]; then" ~/.bashrc; then
    echo -e "\n# Carregar aliases personalizados\nif [ -f ~/.bash_aliases ]; then\n    . ~/.bash_aliases\nfi" >> ~/.bashrc
fi

# Cria ou sobrescreve o arquivo ~/.bash_aliases com os aliases personalizados
cat << 'EOF' > ~/.bash_aliases
### Meus aliases Personalizados:

### Atualizações linux
alias update-all='sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y'
alias update='sudo apt update && sudo apt autoremove -y'
alias update-version='sudo apt upgrade -y && sudo apt autoremove -y'

### Atalhos
alias mkdir='mkdir -pv'
alias ips='sudo ip -c -br a'
alias ports='sudo netstat -tulanp'

### Aplicativos instalados
alias vpn-start='sudo windscribe connect best && sudo windscribe status'
alias ssh-start='sudo systemctl start ssh && sudo systemctl status ssh'
EOF

echo "Aliases configurados com sucesso! Reinicie o terminal ou execute 'source ~/.bashrc' para aplicar as mudanças."
