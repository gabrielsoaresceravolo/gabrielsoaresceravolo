### vim -/.bash_aliases

### Todos os aliases personalizados deve ter um arquivo separado nomeado como: ~/.bash_aliases
### Apenas adicione a seguinte linha no arquivo ~/.bashrc:

### if [ -f ~/.bash_aliases]; then 
###     .~/.bash aliases
### fi

### ==================================

### Meus aliases Personalizados:

## Atualizações linux
alias update-all='sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y'
alias update='sudo apt update && sudo apt autoremove -y'
alias update-version='sudo apt upgrade -y && sudo apt autoremove -y'

## Atalhos
alias mkdir='mkdir -pv'
alias ssh-start='sudo systemctl start ssh 60 sudo systemctl status ssh'
alias ips='ip -c -br a'
alias ports='sudo netstat -tulanp'

## Aplicativos instalados
alias vpn-start='sudo windscribe connect best && sudo windscribe status'
