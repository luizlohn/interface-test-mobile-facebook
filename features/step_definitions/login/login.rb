Dado(/^que o usuário estará na tela de login$/) do
  find_element(class_name: "android.widget.ImageButton").click
  find_element(id: "logout_button").click
end

Dado(/^que esteja na tela de login$/) do
   find_element(id: "imageView_logo")
end

Dado(/^insiro usuário "([^"]*)"$/) do |usuario|
  find_element(id: "textview_email").send_key(usuario)
end

Dado(/^insiro a senha "([^"]*)"$/) do |senha|
  find_element(id: "textview_password").clear
  find_element(id: "textview_password").send_key(senha)
end

Quando(/^clicar em Entrar$/) do
  hide_keyboard
  find_element(id: "button_login").click
end

Então(/^o aplicativo deverá mostrar o onboarding se for o primeiro acesso do usuário$/) do
  if Elements.new.is_element_present("id","skip") == true
    find_element(id: "skip").click
  end
end

Então(/^mostrará o feed do aplicativo$/) do
  wait { find_element(id: "mSearch") }
  until exists{text_exact("Cândice")}do
    Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.8, end_x: 0.5, end_y: 0.2, duration: 600).perform
  end
end

Então(/^o aplicativo deverá mostrar a mensagem "([^"]*)"$/) do |arg1|
  expect(arg1).to eq("Credenciais inválidas.")
end

Então(/^continuará na tela de login$/) do
  find_element(id: "imageView_logo")
end
