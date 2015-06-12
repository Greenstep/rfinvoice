Fabricator(:package_details, from: ::RFinvoice::PackageDetails) do
  initialize_with { @_klass.new to_hash }
  package_length { Fabricate(:quantity14, quantity_unit_code: %w(mm m cm).sample) }
  package_width { Fabricate(:quantity14, quantity_unit_code: %w(mm m cm).sample) }
  package_height { Fabricate(:quantity14, quantity_unit_code: %w(mm cm m).sample) }
  package_weight { Fabricate(:quantity14, quantity_unit_code: %w(kg g).sample) }
  package_net_weight { Fabricate(:quantity14, quantity_unit_code: %w(kg g).sample) }
  package_volume { Fabricate(:quantity14, quantity_unit_code: %w(m3 cm3).sample) }
  transport_carriage_quantity { Fabricate(:quantity14, quantity_unit_code: %w(pcs unit piece).sample) }
end
