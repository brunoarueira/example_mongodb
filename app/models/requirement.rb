class Requirement
  include MongoMapper::Document

  key :title, String
  key :description, String

  belongs_to :user

  validates_presence_of :title, :description, :user
end
