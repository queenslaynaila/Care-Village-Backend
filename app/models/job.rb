class Job < ActiveRecord::Base
  #jobs posted by a client looking for a sitter
  belongs_to  :client
  belongs_to :sitter
  belongs_to :categories
end
