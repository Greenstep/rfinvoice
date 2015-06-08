Fabricator(:account_id, from: ::RFinvoice::AccountID) do
  initialize_with { @_klass.new to_hash }
  value 'FI9814283500171141'
  identification_scheme_name 'IBAN'
end
