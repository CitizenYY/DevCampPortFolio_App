# frozen_string_literal: true

class Portfolio < ApplicationRecord
  validates :title, :subtitle, :body, :main_image, presence: true
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  def self.vuejs
    where(subtitle: 'VueJS')
  end

  after_initialize :set_defaults # callback

  def set_defaults
    self.main_image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/350x200"
  end
end
