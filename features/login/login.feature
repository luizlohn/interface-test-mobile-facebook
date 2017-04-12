#language:pt
@entrar
Funcionalidade: Acessar o aplicativo
  Como um usuário já cadastrado na rede web
  Eu quero poder entrar na rede pelo aplicativo
  de modo que eu possa ver o conteúdo remotamente

  Contexto: usuário na tela de login
    Dado que o usuário estará na tela de login


  @acesso_login_valido
  Cenário: Acessar aplicativo com dados válido
    Dado que esteja na tela de login
    E insiro usuário "luiz.lohn@socialbase.com.br"
    E insiro a senha "Teste123"
    Quando clicar em Entrar
    Então o aplicativo deverá mostrar o onboarding se for o primeiro acesso do usuário
    E mostrará o feed do aplicativo

  @acesso_login_invalido
  Cenário: Acessar aplicativo com dados invalido
    Dado que esteja na tela de login
    E insiro usuário "luiz.lohn@socialbase.com.br"
    E insiro a senha "blablabla"
    Quando clicar em Entrar
    Então o aplicativo deverá mostrar a mensagem "Credenciais inválidas."
    E continuará na tela de login
