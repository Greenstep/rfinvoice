require 'rfinvoice/invoice/epi_identification_details'
require 'rfinvoice/invoice/epi_party_details'
require 'rfinvoice/invoice/epi_payment_instruction_details'

module RFinvoice
  class EpiDetails < Model
    add_modelized_properties %w(EpiIdentificationDetails EpiPartyDetails EpiPaymentInstructionDetails), required: false
  end
end
