<h1 align="center">
Sistema de Backup de Arquivos - Shell Script
</h1>

<p align="center">
  <img src="https://img.shields.io/static/v1?label=shell&message=bash&color=blue&style=for-the-badge&logo=gnu-bash"/>
  <img src="https://img.shields.io/static/v1?label=Backup&message=Automatizado&color=blue&style=for-the-badge&logo=server"/>
  <img src="https://img.shields.io/static/v1?label=License&message=MIT&color=green&style=for-the-badge"/>
  <img src="https://img.shields.io/static/v1?label=STATUS&message=CONCLUÍDO&color=green&style=for-the-badge"/>
</p>

---

# :star2: Sumário

- [Introdução](#introdução)
- [Demonstração](#demonstração)
- [Funcionalidades](#funcionalidades)
- [Instalação](#instalação)
- [Uso](#uso)
- [Exemplos](#exemplos)
- [FAQ / Perguntas Frequentes](#faq--perguntas-frequentes)
- [Contribuição](#contribuição)
- [Boas Práticas](#boas-práticas)
- [Recursos & Links Adicionais](#recursos--links-adicionais)
- [Licença](#licença)
- [Equipe](#equipe)

---

## :books: Introdução

Este projeto foi desenvolvido como parte da avaliação da disciplina Shell Script, com o objetivo de praticar automação de tarefas em shell script, manipulação de arquivos e a criação de backups/restauração de arquivos e diretórios no sistema Linux. O sistema apresenta um menu interativo e intuitivo para facilitar a rotina de backup, restaurando arquivos de maneira segura e eficiente, além de reforçar conceitos de programação em Bash e administração de sistemas.

---


## :rocket: Demonstração

|![Captura de tela de 2025-06-21 13-40-14](https://github.com/user-attachments/assets/65c1ebce-7474-46e6-89d3-3f5eb2662522)|
|---|

> **Nota:**  
> Este projeto possui fins acadêmicos e pode ser adaptado conforme a necessidade.

---

## :zap: Funcionalidades

- **Realizar backup de arquivos ou diretórios com diferentes formatos de compactação**
  - tar, tar.gz, tar.bz2 e cpio
- **Restaurar backups facilmente para qualquer diretório**
- **Interface de menu amigável no terminal**
- **Validações para evitar erros comuns de caminho/arquivo**
- **Exibe tamanho do arquivo original e do backup**
- **Criação automática do diretório de destino se necessário**

---

## :computer: Instalação

### Pré-requisitos

- [Bash Shell](https://www.gnu.org/software/bash/)
- [tar](https://www.gnu.org/software/tar/)
- [cpio](https://www.gnu.org/software/cpio/)
- Permissões para leitura/gravação nos diretórios de origem e destino

### Passo a Passo

1. **Clone este repositório:**
    ```bash
    git clone https://github.com/StellaKarolinaNunes/Sistema-de-Backup-de-Arquivos---Shell-Script
    cd Sistema-de-Backup-de-Arquivos---Shell-Script
    ```

2. **Dê permissão de execução ao script:**
    ```bash
    chmod +x sistema_backup.sh
    ```

3. **Execute o script:**
    ```bash
    ./sistema_backup.sh
    ```

---

## :wrench: Uso

- Selecione a opção desejada no menu:
  - Realizar backup: escolha o arquivo/diretório de origem, o local de destino e o tipo de compactação.
  - Restaurar backup: informe o arquivo compactado e o diretório de destino.
- O script irá guiar passo a passo com validações.
- Ao final, serão exibidas informações detalhadas sobre o processo.

---

## :bulb: Exemplos

**Backup de um diretório como .tar.gz:**  
Selecione "Realizar Backup", informe os caminhos e escolha a opção "2. tar.gz".

**Restaurar backup .cpio para uma nova pasta:**  
Selecione "Restaurar Backup", informe o arquivo .cpio e o destino, depois escolha "4. cpio".

---

## :question: FAQ / Perguntas Frequentes

### 1. Posso fazer backup de arquivos e diretórios?
Sim, o sistema aceita ambos, basta informar o caminho completo.

### 2. O script sobrescreve arquivos existentes?
Se o destino já existir, será sobrescrito.

### 3. Como garantir que os backups estão corretos?
O script mostra o tamanho dos arquivos antes e depois. Para maior segurança, teste a restauração após o backup.

### 4. O que acontece se informar um caminho inválido?
O script valida todos os caminhos e arquivos, e irá solicitar nova entrada em caso de erro.

### 5. E se faltar permissão?
O terminal alertará sobre falta de permissão. Execute com usuário adequado ou ajuste permissões dos diretórios.

### 6. Como contribuir?
Veja a seção de contribuição abaixo!

---

## :handshake: Contribuição

Contribuições são bem-vindas!

1. [Leia o guia de contribuição](./CONTRIBUTING.md)
2. Faça um fork do repositório.
3. Crie uma branch:  
   `git checkout -b feature/seu-recurso`
4. Faça commits claros e objetivos.
5. Abra um Pull Request detalhado.

**Dicas para contribuir:**

- Explique sua motivação.
- Siga a organização do script.
- Teste suas alterações.

---

## :bookmark_tabs: Boas Práticas

- Código limpo, comentado e modular.
- Mensagens de commit claras.
- Teste manual antes do PR.
- Atualize seu fork antes de abrir o PR.

---

## :link: Recursos & Links Adicionais

- [GNU Bash Manual](https://www.gnu.org/software/bash/manual/)
- [GNU tar Manual](https://www.gnu.org/software/tar/manual/)
- [GNU cpio Manual](https://www.gnu.org/software/cpio/manual/)
- [Open Source Contribution Guide](https://opensource.guide/how-to-contribute/)

---

## :page_facing_up: Licença

Este projeto está sob a [Licença MIT](./LICENSE).  
Sinta-se livre para usar, modificar e distribuir, sempre mantendo referência ao repositório original.

---

## :trophy: Equipe

**Desenvolvimento:**  
- [Stella Karolina Nunes Peixoto](https://github.com/StellaKarolinaNunes)

---

> _Projeto acadêmico IFPA | Ciência da Computação – Sistema de Backup em Shell Script para automação e aprendizado de rotinas de backup/restauração no Linux._
