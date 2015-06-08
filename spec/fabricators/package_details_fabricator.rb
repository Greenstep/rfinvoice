Fabricator(:package_details, from: ::RFinvoice::PackageDetails) do
  initialize_with { @_klass.new to_hash }
  package_length
  package_width
  package_height
  package_weight
  package_net_weight
  package_volume
  transport_carriage_quantity
end
