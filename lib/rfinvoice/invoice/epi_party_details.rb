require 'rfinvoice/invoice/epi_bfi_party_details'
require 'rfinvoice/invoice/epi_beneficiary_party_details'

module RFinvoice
  class EpiPartyDetails < Model
    add_modelized_properties %w(EpiBfiPartyDetails EpiBeneficiaryPartyDetails), required: false
  end
end
