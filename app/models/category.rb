class  Category < ActiveRecord::Base
  #STORE DIFFERENT TYPE OF CATEGORIES FOR A SITTER EITHER NANY,HOUSEHELP OR PETNANNY
  has_many :sitters
end
