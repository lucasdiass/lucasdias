#language: pt 
#utf-8

@CriarNovo

Funcionalidade: Validar envio formulario
Eu como usuário 
Quero acessar a página de contatos
Para realizar validações no formulário

Esquema do Cenário: Validar teste formulario
Dado que eu acesse a página Fale conosco 
Quando clico no botão enviar
E preencho todos os campos <nome>, <email>, <cpf>, <assunto> e <mensagem>
Então consigo validar os campos obrigatórios 
Exemplos: 
 | nome  | email      | cpf         | assunto  | mensagem                         |
 |""|"lucas.dias@hotmail.com"|"37638484100"|"Pontuação"|"Olá estou feliz por mandar email"| 
 |"Lucas"|""|"37638484100"|"Pontuação"|"Olá estou feliz por mandar email"|
 |"Lucas"|"lucassil@inmetrics.com.br"|""|"Pontuação"|"Olá estou feliz por mandar email"|
 |"Lucas"|"lucassil@inmetrics.com.br"|"37638484100"|"*Assunto"|"Olá estou feliz por mandar email"|
 |"Lucas"|"lucassil@inmetrics.com.br"|"37638484100"|"Pontuação"|""|