# FetchManager 🚀

O **FetchManager** é uma ferramenta em Bash Script desenhada para simplificar 
a gestão e personalização do Neofetch, focando na facilidade de implementação 
de artes ASCII personalizadas.

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
```bash
git clone https://github.com/brnando/FetchManager.git
cd FetchManager
```

### 3. Dê permissão de execução
```bash
chmod +x fetch_manager.sh
```

### 4. Configurar a Inicialização Automática

Para que o Neofetch apareça sempre que abrir o terminal:
- Abra a sua pasta pessoal (home) e visualize os arquivos ocultos (CTRL+H).
- Abra o arquivo `.bashrc` com um editor de texto.
- Vá até a última linha e escreva `neofetch`.
- Salve com CTRL+S e feche.

## 💻 Executar o FetchManager
```bash
./fetch_manager.sh
```

## 🛠️ Comandos e Argumentos

| Comando | Descrição |
|---|---|
| `./fetch_manager.sh -m` | Abre o Menu Interativo (padrão) |
| `./fetch_manager.sh -i` | Inicializa a configuração e cria o ascii.txt |
| `./fetch_manager.sh -h` | Exibe o menu de ajuda e comandos |

## 🎨 Como Personalizar a sua Arte ASCII

- Acesse a pasta de configuração: `~/.config/neofetch`
- Abra o arquivo `ascii.txt`.
- Escolha uma arte no grupo: [Steam ASCII Art Amalgamation](https://steamcommunity.com/groups/asciiartamalgamation).
- Cole a arte no arquivo e salve.
- Abra um novo terminal para visualizar!

## 🎓 Sobre o Projeto

Projeto desenvolvido como prática pessoal durante o curso de 
Sistemas de Informação no IFBA. Através dele, aprofundei conhecimentos em:

- Shell Script (Bash)
- Automação de tarefas no Linux
- Manipulação de arquivos e diretórios via terminal
- Criação de interfaces interativas via linha de comando
