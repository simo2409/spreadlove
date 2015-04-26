class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Scopes
  
  # Relations
    has_and_belongs_to_many :stories
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
