require 'sinatra'
require_relative './addressbook.pb'

get '/addresses' do
  erez = Person.new(name: "Erez",
                    id: 123,
                    email: "erez@some.where",
                    phone: [
                      Person::PhoneNumber.new(number: "111111"), 
                      Person::PhoneNumber.new(number: "111112", type: Person::PhoneType::MOBILE)
                    ])
  chen = Person.new(name: "Chen",
                    id: 124,
                    email: "chen@some.where",
                    phone: [
                      Person::PhoneNumber.new(number: "111113"), 
                      Person::PhoneNumber.new(number: "111114", type: Person::PhoneType::MOBILE)
                    ])
  a = AddressBook.new(person: [erez, chen]).encode.to_s
  a
end
