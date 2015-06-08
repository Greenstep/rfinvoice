Fabricator(:package_height, class_name: ::RFinvoice::PackageHeight) do
  initialize_with { @_klass.new Fabricate.attributes_for(:quantity14) }
  quantity_unit_code { %w(mm cm m).sample }
end

Fabricator(:package_width, class_name: ::RFinvoice::PackageWidth) do
  initialize_with { @_klass.new Fabricate.attributes_for(:quantity14) }
  quantity_unit_code { %w(mm cm m).sample }
end

Fabricator(:package_length, class_name: ::RFinvoice::PackageLength) do
  initialize_with { @_klass.new Fabricate.attributes_for(:quantity14) }
  quantity_unit_code { %w(mm cm m).sample }
end
