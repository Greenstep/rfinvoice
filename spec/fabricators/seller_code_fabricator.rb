Fabricator(:seller_code, from: ::RFinvoice::SellerCode) do
  initialize_with { @_klass.new Fabricate.attributes_for(:party_identifier) }
end
