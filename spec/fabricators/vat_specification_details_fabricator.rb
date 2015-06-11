Fabricator(:vat_specification_details, from: ::RFinvoice::VatSpecificationDetails) do
  initialize_with { @_klass.new to_hash }
  vat_base_amount
  vat_rate_amount
  vat_code { ::SecureRandom.hex(5) }
  vat_rate_percent { %w(0 10 14 24).sample }
  vat_free_text { [::FFaker::Lorem.word] }
end
