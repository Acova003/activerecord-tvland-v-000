require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name 
    self.first_name + " " + self.last_name
  end 
  
  def list_characters
    self.characters.map do |characters|
      character.name + character.show.name
    end 
  end 
end