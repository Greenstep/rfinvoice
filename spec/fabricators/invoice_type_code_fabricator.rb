Fabricator(:invoice_type_code, from: ::RFinvoice::InvoiceTypeCode) do
  initialize_with { @_klass.new to_hash }
  value { %w(INV01 INV03 REQ01 QUO01 ORD01 TES01 PRI01 DEN01 SEI01).sample }
end
