class Link < ActiveRecord::Base
  validates_presence_of :link, :message => "Please enter a URL "
  validates_format_of :link, :with => /^https?:\/\//, :message => "Invalid URL"
end
