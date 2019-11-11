class Clock < ApplicationRecord
  TYPE = %w[In Out].freeze
  validates :first_name, :last_name,  :presence => true
  validates_inclusion_of :action, in: TYPE
end
