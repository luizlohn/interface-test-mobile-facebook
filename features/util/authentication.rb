class Authentication
  def realizar_login
    $driver.find_element(id: "textview_email").send_key("teste")
    $driver.find_element(id: "textview_password").clear
    $driver.find_element(id: "textview_password").send_key("teste")
    $driver.hide_keyboard
    $driver.find_element(id: "button_login").click
    $driver.wait { find_element(id: "skip") }
    $driver.find_element(id: "skip").click
  end
end
