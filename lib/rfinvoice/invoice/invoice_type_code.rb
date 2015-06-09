module RFinvoice
  class InvoiceTypeCode < Model
    attribute :value, ::RFinvoice::Type::InvoiceTypeCodePattern, required: true
    attribute :code_list_agency_identifier, ::RFinvoice::Type::NMToken3, required: false, default: 'SPY', writer: :private
  end
end