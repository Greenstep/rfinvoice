Fabricator(:shipment_code, from: ::RFinvoice::ShipmentCode) do
  initialize_with { @_klass.new Fabricate.attributes_for(:party_identifier) }
end
