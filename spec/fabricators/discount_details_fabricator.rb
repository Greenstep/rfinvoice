Fabricator(:discount_details, from: ::RFinvoice::DiscountDetails) do
  initialize_with { @_klass.new to_hash }
  amount
  percent { %w(0 10 14 24).sample }
  free_text { ::FFaker::Lorem.word }
end
