class  Category < ActiveRecord::Base
  #STORE DIFFERENT TYPE OF CATEGORIES FOR A SITTER EITHER NANY,HOUSEHELP OR PETNANNY
  has_many :sitters
  has_many :jobs
  has_many :offers
end
