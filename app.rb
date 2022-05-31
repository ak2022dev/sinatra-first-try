require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  'Hello world!'
end

get '/secret' do
  'My secret message'
end

get '/reload-test' do
  'Reload is working!'
end

get '/test' do
  "<html>
    <head>
    </head>
    <body>
      <div style=\"border-width: 5px; border-color: red; border-style: dashed\">
        <img src=\"https://i.imgur.com/jFaSxym.png\" >
      </div>        
    </body>
  </html>"
end

