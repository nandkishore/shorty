class Link < ActiveRecord::Base
  validates_presence_of :link, :message => "Please enter a URL "
  validates_format_of :link, :with => /^https?:\/\//, :message => "Invalid URL"
  validates_presence_of :access_token
  validates_uniqueness_of :access_token
  
  protected
  def before_validation_on_create
    self.access_token = rand(36**6).to_s(36) if self.new_record? and self.access_token.nil?
  end 
end
