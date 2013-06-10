class Potluck < ActiveRecord::Base
  has_many :items, :dependant => :destroy
end