# This module creates pdf
module Pdf
  def create_pdf(file)
    name = [*('A'..'Z')].sample(8).join
    Prawn::Document.generate("#{name}.pdf") do
      file.each do |item|
        text item
      end
    end
  end
end
