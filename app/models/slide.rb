class Slide < ActiveRecord::Base
  belongs_to :slideshow
  acts_as_list :scope=>:slideshow
  belongs_to :photo
end
