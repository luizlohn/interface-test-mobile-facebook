class Authentication
  def realizar_login
    $driver.find_element(id: "textview_email").send_key("sbsuporte@socialbase.com.br")
    $driver.find_element(id: "textview_password").clear
    $driver.find_element(id: "textview_password").send_key("unmt3m@2017")
    $driver.hide_keyboard
    $driver.find_element(id: "button_login").click
    $driver.wait { find_element(id: "skip") }
    $driver.find_element(id: "skip").click
  end
end