# FetchManager 🚀

O **FetchManager** é uma ferramenta em Bash Script desenhada para simplificar a gestão e personalização do Neofetch, focando na facilidade de implementação de artes ASCII personalizadas.

## 📋 Funcionalidades
- Automatiza a criação do diretório de configuração.
- Gera um arquivo de base otimizado para artes ASCII.
- Interface interativa e suporte a comandos rápidos.

## 🚀 Como Utilizar

### 1. Instalação do Neofetch
Caso ainda não tenha o Neofetch instalado, execute:
```bash
sudo apt update && sudo apt install neofetch -y
```
### 2. Clonar e Preparar o Script
Clone o repositório (Substitua pelo seu link se necessário)
```bash
git clone [https://github.com/SEU-USUARIO/FetchManager.git](https://github.com/SEU-USUARIO/FetchManager.git)
cd FetchManager
```

### 3. Dê permissão de execução
```bash
chmod +x fetch_manager.sh
```

### 4. Configurar a Inicialização Automática
Para que o Neofetch apareça sempre que abrir o terminal:    
    - Abra a sua pasta pessoal (home) e visualize os arquivos ocultos (CTRL+H).  
    - Abra o arquivo .bashrc com um editor de texto.  
    - Vá até à última linha e escreva "neofetch" (sem as aspas).  
    - Salve ou use CTRL+S e feche.  

## 💻 Executar o FetchManager
Pode rodar o script diretamente para configurar o seu ambiente:  
```bash
./fetch_manager.sh
```

## 🛠️ Comandos e Argumentos
- Abre o Menu Interativo (Padrão).  
```bash
./fetch_manager.sh -m
```
- Inicializa a configuração e cria o ascii.txt imediatamente.  
```bash
./fetch_manager.sh -i
```
- Exibe o menu de Ajuda e comandos.  
```bash
./fetch_manager.sh -h
```

## 🎨 Como Personalizar a sua Arte ASCII
O diferencial dessa ferramenta é facilitar o uso de artes customizadas.
 - Acesse à pasta de configuração: _~/.config/neofetch_
 - Abra o arquivo _ascii.txt_.  
 - Escolha uma arte no grupo: [Steam ASCII Art Amalgamation](https://steamcommunity.com/groups/asciiartamalgamation).
 - Cole a arte no arquivo ascii.txt e salve.
 - Abra um novo terminal para visualizar a arte!

  
