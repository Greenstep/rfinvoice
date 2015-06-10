Fabricator(:agreement_date, from: ::RFinvoice::AgreementDate) do
  initialize_with { @_klass.new to_hash }
  value { ::Date.today }
end
