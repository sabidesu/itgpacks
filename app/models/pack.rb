class Pack < ApplicationRecord
  has_many :songs

  validates :title, presence: true
  validates :download_link, presence: true
  validates :songs, numericality: { only_integer: true }
  validates :stepartists, presence: true
  validates :minlvl_target, numericality: { only_integer: true }
  validates :maxlvl_target, numericality: { only_integer: true }
  validates :minlvl_total, numericality: { only_integer: true }
  validates :maxlvl_total, numericality: { only_integer: true }
  validates :bpm_min, numericality: { only_integer: true }
  validates :bpm_max, numericality: { only_integer: true }
  validates :difficulties_min, numericality: { only_integer: true }
  validates :difficulties_max, numericality: { only_integer: true }
  validates :play_type, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 6 }
  validates :play_format, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 2 }
end
