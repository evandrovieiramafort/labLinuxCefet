[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/bUfbxE8X)
# TRABALHO: Arquivos e redirecionamentos

## Instruções

1. Os exercícios abaixo deverão ser feitos dentro do terminal do Linux
       
2. Os exercícios estão, em sua maioria, dependentes um dos outros. Ou seja, o segundo depende do primeiro, o terceiro do segundo, e assim sucessivamente. Procure fazê-los na ordem.
       
3. Os comandos executados para cada exercício deverão ser respondidos no respectivos arquivo de script  _./questaoX.sh_, onde o X é o número da questão
       
4. O trabalho será corrigido automaticamente.
       
Para saber sua nota, dentro do terminal, execute o script _./corrigir.sh_.

## Enunciado

1. Instale o programa _fortune_, utilizando o terminal.
       
2. Execute o programa fortune 3 vezes, salvando cada uma das execuções mensagem no arquivo _mensagem**X**.txt_, em que X é a primeira (1), segunda (2), e terceira (3) repetição, respectivamente.

3. Utilize o programa cat para concatenar todos os arquivos acima em uma única mensagem chamada _mensagens.txt_. 
       
4. Copie o arquivo _mensagens.txt_ para o arquivo _mensagens_antiga.txt_. Execute o comando fortune mais uma vez e anexe essa execução ao arquivo mensagens.txt.
       
5. Conte quantas linhas existem no arquivo mensagens.txt. 
       
Salve a resposta no arquivo _linhas.txt_.

Atenção! O arquivo deverá conter apenas UM número!
       
Dica: você pode utilizar o programa wc junto com pipes

6. Utilizando o programa egrep em conjunto com o programa wc, conte quantas letras ‘a’ existem no arquivo mensagens.txt .

Salve sua resposta no arquivo _letras.txt_

Atenção! O arquivo deverá conter apenas UM número!
       
Dica: você pode combinar o item 7 com pipes para fazer esta questão.
       
7. Execute o comando ls -R na pasta /etc. Salve o resultado da execução no arquivo _saida.txt_ e os erros no arquivo _erros.txt_.
       
8. Refaça o exercício anterior, mas agora salve todos os resultados no arquivo único _saida\_com\_erros.txt_.
       
9. O arquivo _/etc/passwd_ é um arquivo de configuração dentro de sistemas operacionais GNU/Linux que contém as informações de todos os usuários do sistema. Esse arquivo contém as informações de um usuário por linha, com informações separadas pelo caractere ‘:’ 

Por exemplo, a primeira coluna desse arquivo contém os nomes dos usuários e a terceira coluna contém os números UUID, que identificam o usuário dentro do sistema operacional de fato.
       
Salve a lista de nomes dos usuários do sistema no arquivo usuarios.txt 
       
Atenção! Deverá constar apenas a primeira coluna do arquivo
       
Dica: utiliza o comando cut ou o programa awk para fazer a extração
       
10. Repita o exercício anterior, mas agora salve os usuários em ordem alfabética no arquivo _usuarios\_ordenados.txt_ 
       
Dica: utilize o comando sort junto com pipes no exercício anterior

