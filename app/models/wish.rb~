class Wish < ActiveRecord::Base

validates_uniqueness_of :description, :scope => :title
validates_presence_of :title, :description, :threshold

belongs_to :user

end
