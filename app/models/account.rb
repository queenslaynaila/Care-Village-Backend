class Account < ActiveRecord::Base
#store all user accounts whether client or sitter
  belongs_to :client
  belongs_to :sitter
end
