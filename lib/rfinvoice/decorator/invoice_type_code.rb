module RFinvoice
  module Decorator
    class InvoiceTypeCode < Representable::Decorator
      include ::Representable::XML
      self.representation_wrap = 'InvoiceTypeCode'

      property :value, content: true
      property :code_list_agency_identifier, as: 'CodeListAgencyIdentifier', attribute: true
    end
  end
end
