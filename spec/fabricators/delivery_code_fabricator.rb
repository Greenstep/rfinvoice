Fabricator(:delivery_code, from: ::RFinvoice::DeliveryCode) do
  initialize_with { @_klass.new Fabricate.attributes_for(:party_identifier) }
end
