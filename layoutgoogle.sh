#!/bin/bash
######################################################################
############# SCRIPT IMPLEMENTADO POR CHRISTIAN G. CASTRO ############
######################################################################
### DON'T REMOVE THE CREDITS BITCH!! #################################
######################################################################
#### CONVERTENDO CONTATOS DO CRM PARA GOOGLE

#Adicionar no inicio do arquivo o padrão do layout do Google

sed -i "1s/^/Name,Given Name,Additional Name,Family Name,Yomi Name,Given Name Yomi,Additional Name Yomi,Family Name Yomi,Name Prefix,Name Suffix,Initials,Nickname,Short Name,Maiden Name,Birthday,Gender,Location,Billing Information,Directory Server,Mileage,Occupation,Hobby,Sensitivity,Priority,Subject,Notes,Group Membership,Phone 1 - Type,Phone 1 - Value\n/" contatos.csv

#Trocar os 2 pontos para o Padrão do Google, aqui eu coloquei o 0 pois o numero veio sem o 054 apenas o 54
sed 's/;;/,,,,,,,,,,,,,,,,,,,,,,,,,,* My Contacts,Mobile,0/g'


#Deletar os pontos do arquivo
#sed 's/\.//g'  contatoscorretos.csv > contatos.csv
sed -i 's/\.//g'  contatos.csv

#Deletar os ultimos ; das linhas
#sed 's/^;//' contatos.csv > contatoscorretos.csv
sed -i 's/^;//' contatos.csv 
