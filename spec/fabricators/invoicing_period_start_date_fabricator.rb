Fabricator(:invoicing_period_start_date, from: ::RFinvoice::InvoicingPeriodStartDate) do
  initialize_with { @_klass.new to_hash }
  value { ::Date.today }
end
