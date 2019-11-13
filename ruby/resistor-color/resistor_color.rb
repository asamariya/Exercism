module ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white]
  def self.color_code(color)
    # resistor = %w[black brown red orange yellow green blue violet grey white]
    COLORS.index(color)
  end
end
