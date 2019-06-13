# frozen_string_literal: true

class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  def self.vuejs
    where(subtitle: 'VueJS')
  end
end
