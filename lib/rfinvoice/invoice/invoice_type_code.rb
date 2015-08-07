module RFinvoice
  class InvoiceTypeCode < Model
    attribute :value, ::RFinvoice::Type::InvoiceTypeCodePatternType, required: false
    attribute :code_list_agency_identifier, ::RFinvoice::Type::Token3, required: false, default: 'SPY', writer: :private
  end
end
