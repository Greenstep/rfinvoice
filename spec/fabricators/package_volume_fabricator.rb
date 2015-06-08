Fabricator(:package_volume, class_name: ::RFinvoice::PackageVolume) do
  initialize_with { @_klass.new Fabricate.attributes_for(:quantity14) }
  quantity_unit_code { %w(cm3 m3).sample }
end
