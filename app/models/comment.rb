class Comment < ActiveRecord::Base
  belongs_to :movie

  validates :author, :presence => true
  validates :comment, :presence => true

end
