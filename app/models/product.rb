class Product < ActiveRecord::Base
  enum category: [:food, :drink]
end
