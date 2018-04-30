class User < ApplicationRecord
  
  enum role: [:actor, :casting_director, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :actor
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :actor
  accepts_nested_attributes_for :actor, allow_destroy: true

  #scope :name, -> (n) { where(name: n) }
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
