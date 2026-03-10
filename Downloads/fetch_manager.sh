#!/bin/bash

# ==============================================================================
# Projeto: FetchManager
# Descrição: Gestão e Automação de Configurações ASCII para Neofetch
# Autor: Bruno Fernando
# Versão: 1.0.0
# ==============================================================================

CONFIG_DIR="${HOME}/.config/neofetch"
ASCII_FILE="ascii.txt"
URL_RECOMENDADA="https://steamcommunity.com/groups/asciiartamalgamation"

readonly VERDE='\033[0;32m'
readonly VERMELHO='\033[0;31m'
readonly AMARELO='\033[1;33m'
readonly AZUL='\033[0;34m'
readonly NC='\033[0m'

# Função de Ajuda (-h / --help)
exibir_ajuda() {
    echo -e "${AZUL}FetchManager - Manual de Utilização${NC}"
    echo ""
    echo -e "${AMARELO}Uso:${NC} ./neofetchs.sh [OPÇÃO]"
    echo ""
    echo -e "${AMARELO}Opções:${NC}"
    echo "  -i, --iniciar    Configura o ambiente e cria o ficheiro base."
    echo "  -h, --help       Exibe esta interface de auxílio."
    echo "  -m, --menu       Inicia o menu interativo (padrão)."
    echo ""
    echo -e "${AMARELO}Personalização:${NC}"
    echo "  Para alterar a arte visual, edite o ficheiro em: ${CONFIG_DIR}/${ASCII_FILE}"
    echo "  Recomendamos o acervo: ${URL_RECOMENDADA}"
}


iniciar_configuracao() {
    echo -e "${AZUL}[FetchManager]${NC} Iniciando configuração do sistema..."
    
    if [ ! -d "$CONFIG_DIR" ]; then
        echo -e "${AMARELO}Criando diretório de configuração em: $CONFIG_DIR...${NC}"
        mkdir -p "$CONFIG_DIR"
        sleep 1
    fi

    echo -e "${VERDE}Gerando ficheiro de base: $ASCII_FILE...${NC}"
    
    cat << 'EOF' > "$CONFIG_DIR/$ASCII_FILE"
# ==========================================================
# FetchManager - Configuração de Informações
# ==========================================================
print_info() {
    info title
    info underline
    info "OS" distro
    info "Kernel" kernel
    info "Uptime" uptime
    info "Shell" shell
    info "CPU" cpu
    info "Memory" memory
}

# [INSTRUÇÃO DE PERSONALIZAÇÃO]
# Para adicionar a sua própria arte ASCII, cole-a abaixo
# ou substitua o conteúdo deste ficheiro, mantendo a função print_info.
# ==========================================================
EOF

    echo -e "\n${VERDE}✔ Configuração concluída com sucesso!${NC}"
    echo -e "------------------------------------------------------------"
    echo -e "${AMARELO}COMO PERSONALIZAR A SUA ARTE:${NC}"
    echo -e "1. Aceda à pasta: ${AZUL}${CONFIG_DIR}${NC}"
    echo -e "2. Abra o ficheiro ${AZUL}${ASCII_FILE}${NC} com o seu editor favorito."
    echo -e "3. Escolha uma arte em: ${URL_RECOMENDADA}"
    echo -e "4. Cole a arte dentro do ficheiro e guarde as alterações."
    echo -e "------------------------------------------------------------"
}

# --- Menu Principal ---
exibir_menu() {
    clear
    echo -e "${AMARELO}+===========================================================+${NC}"
    echo -e "${AMARELO}|                    FETCH MANAGER v1.0                     |${NC}"
    echo -e "${AMARELO}+===========================================================+${NC}"
    echo -e "  1. Instalar/Resetar Configuração Base"
    echo -e "  2. Instruções de Personalização (ASCII Art)"
    echo -e "  3. Ajuda Detalhada"
    echo -e "  0. Sair"
    echo -e "${AMARELO}+===========================================================+${NC}"
    
    read -p "Selecione uma opção: " opt
    case $opt in
        1) iniciar_configuracao ;;
        2) 
            echo -e "\n${AMARELO}Dica:${NC} Utilize 'nano $CONFIG_DIR/$ASCII_FILE' para editar."
            echo -e "Encontre artes aqui: $URL_RECOMENDADA"
            read -p "Pressione Enter para voltar..." ;;
        3) exibir_ajuda ; read -p "Pressione Enter para voltar..." ;;
        0) exit 0 ;;
        *) echo "Opção inválida." ; sleep 1 ; exibir_menu ;;
    esac
}

if [[ $# -eq 0 ]]; then
    exibir_menu
else
    case "$1" in
        -h|--help) exibir_ajuda ;;
        -i|--iniciar) iniciar_configuracao ;;
        -m|--menu) exibir_menu ;;
        *) echo -e "${VERMELHO}Erro: Comando desconhecido.${NC} Use --help." ; exit 1 ;;
    esac
fi