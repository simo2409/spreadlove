class Story < ActiveRecord::Base

  mount_uploader :header, StoryHeaderUploader

  # Scopes
  
  # Relations
    has_and_belongs_to_many :users
    has_many :facts
  # Filters
  
  # Validations
  
  ### Custom filters
  
  ### END Custom filters
  
  ### Custom validations
  
  ### END Custom validations
  
  ### Instance methods
  
  ### END instance methods
  
  ### Class methods
  
  ### END Class methods
end
