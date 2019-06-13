# frozen_string_literal: true

class Skill < ApplicationRecord
  validates :title, :skill_percent, presence: true
end
