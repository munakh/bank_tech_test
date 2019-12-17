class Statement

  attr_reader :line_items

  def initialize
    @line_items = []
  end

  def header
    "date || credit || debit || balance"
  end
end
