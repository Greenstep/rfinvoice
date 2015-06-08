Fabricator(:package_weight, class_name: ::RFinvoice::PackageWeight) do
  initialize_with { @_klass.new Fabricate.attributes_for(:quantity14) }
  quantity_unit_code { %w(g kg).sample }
end

Fabricator(:package_net_weight, class_name: ::RFinvoice::PackageNetWeight) do
  initialize_with { @_klass.new Fabricate.attributes_for(:quantity14) }
  quantity_unit_code { %w(g kg).sample }
end
