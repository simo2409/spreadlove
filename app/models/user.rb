class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  # Scopes
  
  # Relations
    has_and_belongs_to_many :stories
    has_many :facts, foreign_key: :actor_id
  # Filters
  
  # Validations
  
  ### Custom filters
  
  ### END Custom filters
  
  ### Custom validations
  
  ### END Custom validations
  
  ### Instance methods
    def create_new_story!
      self.stories.create!
    end

    def full_name
      self.first_name + ' ' + self.last_name
    end
  ### END instance methods
  
  ### Class methods
  
  ### END Class methods
end
