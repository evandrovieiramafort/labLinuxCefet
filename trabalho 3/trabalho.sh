#!/bin/bash

# 1. Criação dos grupos
groupadd aluno
groupadd professor
groupadd gerente

# 2. Criação e configuração das pastas
mkdir -p /srv
chown root:gerente /srv
chmod 751 /srv

mkdir -p /srv/alunos
mkdir -p /srv/professores

chown root:aluno /srv/alunos
chown root:professor /srv/professores

chmod 770 /srv/alunos
chmod 770 /srv/professores

# 3. Criação dos usuários

# Professor bruno (grupo primário professor, secundário gerente)
useradd -m -d /srv/professores/bruno -g professor -G gerente -s /bin/bash -c "" bruno

# Alunos
useradd -m -d /srv/alunos/joao -g aluno -s /bin/bash -c "" joao
useradd -m -d /srv/alunos/maria -g aluno -s /bin/bash -c "" maria

# 4. Definições de expiração e validade de senha
EXPIRATION_DATE="2051-04-25"
PASSWORD_VALIDITY_DAYS=90

# Aplicar configurações para joao
usermod -e "$EXPIRATION_DATE" joao
chage -M "$PASSWORD_VALIDITY_DAYS" joao

# Aplicar configurações para maria
usermod -e "$EXPIRATION_DATE" maria
chage -M "$PASSWORD_VALIDITY_DAYS" maria

