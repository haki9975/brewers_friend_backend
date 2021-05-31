class Beer < ApplicationRecord
    has_many :ingredients, :dependent => :delete_all
    accepts_nested_attributes_for :ingredients
end
