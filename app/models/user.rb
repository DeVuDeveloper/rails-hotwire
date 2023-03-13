class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  belongs_to :company

  def name
    email.split("@").first.capitalize
  end
end