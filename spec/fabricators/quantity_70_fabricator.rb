Fabricator(:quantity70, from: ::RFinvoice::Quantity70) do
  initialize_with { @_klass.new to_hash }
  value { rand(1000).to_s }
end
