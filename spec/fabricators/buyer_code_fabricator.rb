Fabricator(:buyer_code, from: ::RFinvoice::BuyerCode) do
  initialize_with { @_klass.new Fabricate.attributes_for(:party_identifier) }
end
