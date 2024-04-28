# encoding: utf-8
# language: pt

Funcionalidade: Crie um método que receba dois parâmetros: uma string e um array. Essa função deve remover todo o texto que vier após qualquer um dos símbolos recebidos no array.

  @string_array1
  Cenário: saída esperada é: “bananas, tomates"
  Dado que a string de entrada “bananas, tomates # e ventiladores”
  Quando os marcadores [“#”, “!”]
  Então a saída esperada é: “bananas, tomates"

  @string_array2
  Cenário: string de entrada “o rato roeu a roupa $ do rei % de roma”
  Dado que a string de entrada “o rato roeu a roupa $ do rei % de roma”
  Quando os marcadores [“%”, “!”]
  Então a saída esperada é: “o rato roeu a roupa $ do rei”

  @string_array3
  Cenário: a saída esperada é : “the quick brown fox”
  Dado que a string de entrada “the quick brown fox & jumped over * the lazy dog”
  E os marcadores [“&”, “*”, “%”, “!”]
  Então a saída esperada é : “the quick brown fox”