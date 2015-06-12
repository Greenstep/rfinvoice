module RFinvoice
  class PackageDetails < Model
    add_quantity_properties '14', %w(PackageLength PackageWidth PackageHeight PackageWeight), required: false
    add_quantity_properties '14', %w(PackageNetWeight PackageVolume TransportCarriageQuantity PackageWeight), required: false
  end
end
