class Wpis < ActiveRecord::Base
  validates_presence_of :tresc, :imie, :mail
  validates_length_of :imie, :nazwisko, :maximum => 30
  validates_length_of :mail, :strona, :maximum => 50
  validates_format_of :mail,
       :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, 
       :on => :create,   
       :message =>  "ma nieprawidłowy format" 
  validates_format_of :strona,  
       :if => :strona?,
       :with => /^(http?):\/\/((?:[-a-z0-9]+\.)+[a-z]{2,})/, 
       :message => "ma nieprawidłowy format"
end
