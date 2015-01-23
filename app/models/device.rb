class Device < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable#, :registerable,
         #:recoverable, :rememberable, :trackable, :validatable
  has_many :events, dependent: :destroy

  validates :name, presence: true
end