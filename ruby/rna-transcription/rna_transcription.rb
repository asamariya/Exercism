# module Complement
#   def self.of_dna(dna)
#     rna = []
#     dna.chars.each do |s|
#       case s
#       when 'A' then rna << 'U'
#       when 'C' then rna << 'G'
#       when 'G' then rna << 'C'
#       when 'T' then rna << 'A'
#       end
#     end
#     rna.join('')
#   end
# end

module Complement
  DNA_TO_RNA = {
    'A' => 'U',
    'C' => 'G',
    'G' => 'C',
    'T' => 'A'
  }.freeze
  def self.of_dna(dna)
    dna if dna.empty?
    dna.chars.map { |n| DNA_TO_RNA[n] }.join
  end
end
