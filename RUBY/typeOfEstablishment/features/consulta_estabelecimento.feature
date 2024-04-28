# encoding: utf-8
# language: pt

Funcionalidade: Consulta de tipos de estabelecimentos

  @estabelecimento 
  Cenário: Consultar um tipo de estabelecimento com sucesso e retornar um valor aleatório 
  Dado que realizo uma consulta no serviço de estabelecimentos
  Quando o JSON retornado contém a chave "typeOfEstablishment"
  Então retorno um tipo de estabelecimento aleatório

