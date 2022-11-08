class Account < ActiveRecord::Base
#store all user accounts whether client or sitter Account.sitter account.client all ou Account.client Account.user
  belongs_to :client
  belongs_to :sitter
end
