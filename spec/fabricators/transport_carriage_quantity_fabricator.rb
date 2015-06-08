Fabricator(:transport_carriage_quantity, class_name: ::RFinvoice::TransportCarriageQuantity) do
  initialize_with { @_klass.new Fabricate.attributes_for(:quantity14) }
  quantity_unit_code { %w(pcs unit piece).sample }
end
