Fabricator(:invoicing_period_end_date, from: ::RFinvoice::InvoicingPeriodEndDate) do
  initialize_with { @_klass.new to_hash }
  value { ::Date.today }
end
