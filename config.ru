require 'rack'
require 'pry'

class App
  def call(env)
    path = env["PATH_INFO"]

    if path == "/"
      [200, {"Content-Type" => "text/html"}, ["<h2>Hello <em>World</em>!</h2>"]]
    elsif path == "/potato"
      [200, {"Content-Type" => "text/html"}, ["<h2>The potat🥔🥔!</h2>"]]
    else
      [404, {"Content-Type" => "text/html"}, ["<h2>Whatchu do?! You broke me 😭</h2>"]]
    # binding.pry
      end
  end
end

run App.new