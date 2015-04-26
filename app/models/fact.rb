class Fact < ActiveRecord::Base
  enum kind: [:surprise, :travel, :done_togheter, :project, :argument, :eating]

  # Scopes
  
  # Relations
    belongs_to :story
    belongs_to :actor, class_name: 'User'
  # Filters
  
  # Validations
    validates :story_id, :date_from, :kind, presence: true
    validates :actor_id, inclusion: {in: ->(fact) {fact.story.users.pluck(:id)}}
  ### Custom filters
  
  ### END Custom filters
  
  ### Custom validations
  
  ### END Custom validations
  
  ### Instance methods
  
  ### END instance methods
  
  ### Class methods
  
  ### END Class methods
end
