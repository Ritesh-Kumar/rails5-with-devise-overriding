class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :role
  has_one :secret_code
  accepts_nested_attributes_for :secret_code

  after_initialize :set_default_role, :if => :new_record?


  def set_default_role
    self.role ||= Role.find_by_name('user')
  end

  def admin?
    self.role.name == "admin" rescue false
  end

end
