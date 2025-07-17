#!/bin/bash

# Questão 1: Expressões Regulares com grep (egrep)

# 1a) Todas as strings contendo 0's ou 1's (incluindo string vazia, então não tem como fazer com -o exatamente, mas vamos considerar que "qualquer número de 0s ou 1s" atende)
egrep -o '[01]*' bruxarias.dat > 1a.txt

# 1b) Números binários de 8 bits, começando com 1 e com até 8 caracteres
grep -o '\<1[01]\{7\}\>' bruxarias.dat > 1b.txt

# 1c) Linhas que contêm exatamente 1 número binário de 8 bits
egrep '^\s*1[01]{0,7}\s*$' bruxarias.dat > 1c.txt

# 1d) Números decimais válidos: ou um único 0, ou um número que começa de 1 a 9 seguido de dígitos
egrep -o '\b(0|[1-9][0-9]*)\b' bruxarias.dat > 1d.txt

# 1e) Letras 'u' ou 'e' seguidas de 'tt'
egrep -o '[ue]tt' bruxarias.dat > 1e.txt

# 1f) Palavras da língua inglesa com no mínimo 3 letras, apenas letras, e só a primeira pode ser maiúscula
grep -o '\<[A-Z][a-z]\{2,\}\>\|\<[a-z]\{3,\}\>' bruxarias.dat > 1f.txt

# 1g) Variáveis: começam com letra (maiúscula ou minúscula), seguidas de letras, números ou _
egrep -o '\b[a-zA-Z][a-zA-Z0-9_]*\b' bruxarias.dat > 1g.txt

# 1h) Endereços IPv4: 4 grupos de números, separados por ponto
egrep -o '\b((25[0-5]|2[0-4][0-9]|1?[0-9]{1,2})\.){3}(25[0-5]|2[0-4][0-9]|1?[0-9]{1,2})\b' bruxarias.dat > 1h.txt

# Questão 2: find

# 2a) Imprimir todos os diretórios de /etc
find /etc -type d > 2a.txt

# 2b) Imprimir todos os diretórios de /etc, sem imprimir subdiretórios
ls -d /etc/*/ | grep -v '/' | sort > 2b.txt

# 2c) Arquivos regulares com mais de 1 KiB (1024 bytes) em /etc
find /etc -type f -size +1k > 2c.txt

# 2d) Arquivos modificados na última semana em /var
find /var -type f -mtime -6 > 2d.txt

# Questão 3: awk no /etc/passwd

# 3a) Imprima apenas os nomes dos usuários do sistema (primeira coluna)
awk -F':' '{ print $1 }' /etc/passwd > 3a.txt

# 3b) Linhas 10 a 20, com apenas o nome do usuário (coluna 1)
awk -F':' 'NR>=10 && NR<=20 {print $1}' /etc/passwd > 3b.txt

# Questão 4: sed

# 4a) Substituir seu usuário por 'exercicio'
sed 's/^evandromafort:/exercicio:/' /etc/passwd > 4a.txt

# 4b) Apagar a linha com o usuário 'evandromafort'
sed '/^evandromafort:/d' /etc/passwd > 4b.txt
