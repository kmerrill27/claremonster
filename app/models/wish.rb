validates uniqueness_of :description, :scope => :title
validates presence_of :title, :description, :threshold

class Wish < ActiveRecord::Base
end
