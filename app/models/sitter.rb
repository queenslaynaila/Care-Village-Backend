class Sitter < ActiveRecord::Base
   #are of diff categories eg househelp and nanny,he or she can look for jobs posted by a client and apply job offet
   has_one :account
   belongs_to :category
   has_many :jobs
   has_many :clients, through: :jobs
   has_one :offer
end
