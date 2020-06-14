# == Schema Information
#
# Table name: users
#
#  id                         :bigint           not null, primary key
#  admin                      :boolean          default(FALSE), not null
#  announcements_last_read_at :datetime
#  email                      :string           default(""), not null
#  encrypted_password         :string           default(""), not null
#  first_name                 :string
#  last_name                  :string
#  remember_created_at        :datetime
#  reset_password_sent_at     :datetime
#  reset_password_token       :string
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # extends ...................................................................
  # includes ..................................................................
  # relationships .............................................................
  has_many :services

  # validations ...............................................................
  # validates :admin, presence: true
  # validates :email, presence: true
  # validates :encrypted_password, presence: true

  # callbacks .................................................................
  # scopes ....................................................................
  # additional config (i.e. accepts_nested_attribute_for etc...) ..............
  has_person_name
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable

  # class methods .............................................................
  # class << self
  # end

  # public instance methods ...................................................

  # protected instance methods ................................................
  protected

  # private instance methods ..................................................
  private
end
