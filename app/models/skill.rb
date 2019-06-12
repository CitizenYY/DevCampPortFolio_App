# frozen_string_literal: true

class Skill < ApplicationRecord
  validates_presence_of :title, :skill_percent
end
