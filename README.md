# Objetivo

O objetivo deste repositório é praticar os conhecimentos básicos de infraestrutura como código com Terraform e Ansible, além de utilizar a cloud, em específico a AWS.

O maior desafio para mim nesse projeto foi a implementação de inventário dinâmico para buscar o IP da máquina virtual criada na AWS com o terraform.

# Começando

Para começar, clone o projeto e substituia as variáveis: key_name, region e instance_type.

Após isso, utilize esse comando para iniciar o terraform.
```bash
$ terraform init
```
Use este comando abaixo para visualizar o plano de execução e as alterações que serão feitas na infraestrutura.

```bash
$ terraform plan
```
Para executar a ação proposta pelo plano de execução, utilize o comando abaixo.

```bash
$ terraform apply
```

no final, não se esqueça de utilizar este comando abaixo para destruir a infraestrutura na nuvem e não ser cobrado posteriormente.

```bash
$ terraform destroy
```


# Ferramentas

- [Ansible](https://docs.ansible.com/ansible/latest/index.html)
- [Terraform](https://www.terraform.io)
- [AWS EC2](https://aws.amazon.com/ec2/)