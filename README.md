# Descrição

>Esse repositório tem como objetivo subir uma aplicação que faz interação com o Hubspot:

[axur-challenge](https://github.com/BrunoAgst/axur-challenge)

# Configuração

>Para utilizar o arquivo basta configurar as variaveis de ambiente **API_KEY** e **PORT** no arquivo playbook.yml que esta na pasta /env.

**Lembrando que a chave de API que precisamos é a do Hubspot**

# Iniciando

>Primeiro precisamos iniciar o terraform nas pasta env e infra utilizando o seguinte comando:

```
terraform init
```

> Após incializarmos o terraform acessamos a pasta env e subimos a instãncia ec2:

```
terraform apply
```

> E por último utilizando o ansible vamos configurar e iniciar a nossa aplicação:

```
ansible-playbook **path_playbook** -u **user_ec2** --private-key **path_chave_privada** -i **path_hosts**
```

# Logs

> Podemos ver os logs da aplicação acessando a instancia e utilizando o pm2:

```
pm2 logs index
```

```
pm2 monit
```
