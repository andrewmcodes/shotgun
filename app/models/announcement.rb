# == Schema Information
#
# Table name: announcements
#
#  id                :bigint           not null, primary key
#  announcement_type :string
#  description       :text
#  name              :string
#  published_at      :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Announcement < ApplicationRecord
  TYPES = %w[new fix update]

  # extends ...................................................................
  # includes ..................................................................
  # relationships .............................................................
  # validations ...............................................................
  validates :announcement_type, :description, :name, :published_at, presence: true
  validates :announcement_type, inclusion: {in: TYPES}

  # callbacks .................................................................
  # scopes ....................................................................
  # additional config (i.e. accepts_nested_attribute_for etc...) ..............
  after_initialize :set_defaults

  # class methods .............................................................
  # class << self
  # end

  # public instance methods ...................................................
  def set_defaults
    self.published_at ||= Time.zone.now
    self.announcement_type ||= TYPES.first
  end

  # protected instance methods ................................................
  protected

  # private instance methods ..................................................
  private
end
