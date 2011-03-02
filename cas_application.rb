require 'rubygems'
require 'sinatra'

get '/cas/login' do
  redirect "#{params['service']}?ticket=ST-21346-9npj2dtILfQaChhqsvUb-cas-rsa"
end

get '/cas/serviceValidate' do
  "<cas:serviceResponse xmlns:cas='http://www.yale.edu/tp/cas'>
    <cas:authenticationSuccess>
      <cas:user>username</cas:user>
    </cas:authenticationSuccess>
  </cas:serviceResponse>"
end