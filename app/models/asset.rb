class Asset < ActiveRecord::Base
  has_attached_file :asset
  attr_accessible :asset
end
