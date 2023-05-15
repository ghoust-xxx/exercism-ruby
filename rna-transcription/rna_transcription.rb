=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end


module Complement
  @let = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U',
  }

  def Complement.of_dna(l)
    res = ""
    l.each_char { |c|
      if !@let.key?(c.to_sym)
        res << @let[c]
      else
        return ""
      end
    }
    res
  end
end
