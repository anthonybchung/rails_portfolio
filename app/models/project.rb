class Project < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  validates :description, length: {maximum: 750},presence: true

  validates :position, numericality: {greater_than: 0}

  VALID_GITHUB_LINK = /\Ahttps:\/\/github\.com\//i
  GITHUB_INVALID_MSG = 'Link must start with https://github.com'
  validates :github, format: {with: VALID_GITHUB_LINK, message: GITHUB_INVALID_MSG},allow_blank: true,allow_nil: true

  enum :category, {ruby: 0, rails: 1, javascript:2}

  # on_main_page
  after_initialize :set_default_on_main_page

  private

  def set_default_on_main_page
    self.on_main_page = true
  end


end
