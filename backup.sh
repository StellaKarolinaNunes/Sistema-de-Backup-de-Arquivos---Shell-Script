#!/bin/bash

# Função para criar backup
function realizar_backup() {
    clear
    echo "╔══════════════════════════════════════════════════════════════════════════════╗"
    echo "║                           CRIAÇÃO DE BACKUP DE ARQUIVOS                      ║"
    echo "║                 Atividade por: STELLA KAROLINA NUNES PEIXOTO                 ║"
    echo "╚══════════════════════════════════════════════════════════════════════════════╝"
    echo
    while true; do
        echo "Informe o caminho completo do arquivo ou diretório de origem:"
        read -r origem
        if [[ -z "$origem" || ! -e "$origem" ]]; then
            echo "Erro: O arquivo ou diretório informado não existe. Tente novamente."
            echo
        else
            break
        fi
    done

    echo
    while true; do
        echo "Informe o caminho completo do arquivo de destino (incluindo o nome do arquivo):"
        read -r destino
        if [[ -z "$destino" ]]; then
            echo "Erro: O nome do arquivo de destino não pode estar vazio."
            echo
        else
            mkdir -p "$(dirname "$destino")"  # Garante que o diretório de destino existe
            break
        fi
    done

    echo
    echo "Selecione o tipo de compactação:"
    echo "1. tar"
    echo "2. tar.gz"
    echo "3. tar.bz2"
    echo "4. cpio"
    read -r opcao

    case $opcao in
        1) tar -cf "$destino" -C "$(dirname "$origem")" "$(basename "$origem")" ;;
        2) tar -czf "$destino" -C "$(dirname "$origem")" "$(basename "$origem")" ;;
        3) tar -cjf "$destino" -C "$(dirname "$origem")" "$(basename "$origem")" ;;
        4) 
            if [ -d "$origem" ]; then
                find "$origem" -type f | cpio -o -H newc > "$destino"
            else
                echo "$origem" | cpio -o -H newc > "$destino"
            fi
            ;;
        *)
            echo "Erro: Opção inválida."
            echo "Pressione Enter para retornar ao menu."
            read -r
            return
            ;;
    esac

    if [[ ! -f "$destino" ]]; then
        echo
        echo "Erro ao criar o backup. Verifique se os caminhos estão corretos."
        echo "Pressione Enter para retornar ao menu."
        read -r
        return
    fi

    echo
    echo "Backup criado com sucesso!"
    echo "Tamanho do arquivo original: $(du -sh "$origem" | awk '{print $1}')"
    echo "Tamanho do arquivo de backup: $(du -sh "$destino" | awk '{print $1}')"
    echo
    echo "Pressione Enter para retornar ao menu."
    read -r
}

# Função para restaurar backup
function restaurar_backup() {
    clear
    echo "╔══════════════════════════════════════════════════════════════════════════════╗"
    echo "║                           RESTAURAÇÃO DE BACKUP                              ║"
    echo "║                 Atividade por: STELLA KAROLINA NUNES PEIXOTO                 ║"
    echo "╚══════════════════════════════════════════════════════════════════════════════╝"
    echo
    while true; do
        echo "Informe o caminho completo do arquivo de backup:"
        read -r backup
        if [[ -z "$backup" || ! -f "$backup" ]]; then
            echo "Erro: O arquivo de backup não existe. Tente novamente."
            echo
        else
            break
        fi
    done

    echo
    while true; do
        echo "Informe o diretório de destino para restaurar os arquivos:"
        read -r destino
        if [[ -z "$destino" ]]; then
            echo "Erro: O diretório de destino não pode estar vazio."
            echo
        else
            mkdir -p "$destino"
            break
        fi
    done

    echo
    echo "Selecione o tipo de compactação do arquivo de backup:"
    echo "1. tar"
    echo "2. tar.gz"
    echo "3. tar.bz2"
    echo "4. cpio"
    read -r opcao

    case $opcao in
        1) tar -xf "$backup" -C "$destino" ;;
        2) tar -xzf "$backup" -C "$destino" ;;
        3) tar -xjf "$backup" -C "$destino" ;;
        4) cpio -idmv < "$backup" -D "$destino" ;;
        *)
            echo "Erro: Opção inválida."
            echo "Pressione Enter para retornar ao menu."
            read -r
            return
            ;;
    esac

    echo
    echo "Backup restaurado com sucesso!"
    echo "Arquivos extraídos para: $destino"
    echo
    echo "Pressione Enter para retornar ao menu."
    read -r
}

# Função principal que exibe o menu
function menu_principal() {
    while true; do
        clear
        echo "╔══════════════════════════════════════════════════════════════════════════════╗"
        echo "║                           SISTEMA DE BACKUP DE ARQUIVOS                      ║"
        echo "║                 Atividade por: STELLA KAROLINA NUNES PEIXOTO                 ║"
        echo "╠══════════════════════════════════════════════════════════════════════════════╣"
        echo "║ 1. Realizar Backup                                                           ║"
        echo "║ 2. Restaurar Backup                                                          ║"
        echo "║ 3. Sair                                                                      ║"
        echo "╚══════════════════════════════════════════════════════════════════════════════╝"
        echo
        echo "Selecione uma opção:"
        read -r opcao

        case $opcao in
            1) realizar_backup ;;
            2) restaurar_backup ;;
            3)
                echo "Saindo..."
                exit 0
                ;;
            *)
                echo "Opção inválida."
                echo "Pressione Enter para tentar novamente."
                read -r
                ;;
        esac
    done
}

# Executa o menu principal
menu_principal
