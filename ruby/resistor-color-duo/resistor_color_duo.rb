# frozen_string_literal: true

module ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze
  def self.value(colors)
    colors.map do |color|
      COLORS.index(color) if colors.index(color) <= 1
    end.join.to_i
  end
end
