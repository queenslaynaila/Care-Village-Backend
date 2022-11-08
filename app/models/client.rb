class  Client < ActiveRecord::Base
  #store our clients,clients will post jobs looking for a sitter of a specifc category
  has_one :account
  has_many :jobs
  has_many :sitters,through: :jobs
end
