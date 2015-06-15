require 'rfinvoice/invoice/epi_remittance_info_identifier'
require 'rfinvoice/invoice/epi_charge'

module RFinvoice
  class EpiPaymentInstructionDetails < Model
    add_string_simple_properties '0_35', %w(EpiPaymentInstructionId), required: false
    add_token_simple_properties '3', %w(EpiTransactionTypeCode), required: false
    add_nmtoken_simple_properties '0_35', %w(EpiInstructionCode), required: false
    add_modelized_properties %w(EpiRemittanceInfoIdentifier), required: false
    add_properties_with_type %w(EpiInstructedAmount), ::RFinvoice::EpiAmount, required: true
    add_modelized_properties %w(EpiCharge), required: true, default: ->(_i, _a) { EpiCharge.new }
    add_date_properties %w(EpiDateOptionDate), required: true
  end
end
