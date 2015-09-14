## Generated from addressbook.proto
require "beefcake"


class Person
  include Beefcake::Message

  module PhoneType
    MOBILE = 0
    HOME = 1
    WORK = 2
  end

  class PhoneNumber
    include Beefcake::Message
  end
end

class AddressBook
  include Beefcake::Message
end

class Person

  class PhoneNumber
    required :number, :string, 1
    optional :type, Person::PhoneType, 2, :default => Person::PhoneType::HOME
  end
  required :name, :string, 1
  required :id, :int32, 2
  optional :email, :string, 3
  repeated :phone, Person::PhoneNumber, 4
end

class AddressBook
  repeated :person, Person, 1
end
