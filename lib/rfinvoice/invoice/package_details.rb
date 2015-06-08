require 'rfinvoice/invoice/package_length'
require 'rfinvoice/invoice/package_width'
require 'rfinvoice/invoice/package_height'
require 'rfinvoice/invoice/package_weight'
require 'rfinvoice/invoice/package_net_weight'
require 'rfinvoice/invoice/package_volume'
require 'rfinvoice/invoice/transport_carriage_quantity'

module RFinvoice
  class PackageDetails < Model
    add_complex_properties %w(PackageLength PackageWidth PackageHeight PackageWeight), required: false
    add_complex_properties %w(PackageNetWeight PackageVolume TransportCarriageQuantity PackageWeight), required: false
  end
end
