require 'watir'

def setup
  @browser = Watir::Browser.new :chrome
  @browser.goto('https://www.saucedemo.com/')

end

def login(username, password)
  @browser.text_field(id: 'user-name').set(username)
  @browser.text_field(id: 'password').set(password)
  @browser.button(class: 'btn_action').click

end

def select_item
  @browser.button(class: 'btn_primary btn_inventory').click

end

def view_cart
  @browser.span(class: 'fa-layers-counter shopping_cart_badge').click

end

def remove_item
  @browser.button(class: 'btn_secondary cart_button').click

end