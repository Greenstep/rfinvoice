Fabricator(:account_bic, from: ::RFinvoice::AccountBic) do
  initialize_with { @_klass.new to_hash }
  value 'HANDFIHH'
  identification_scheme_name 'BIC'
end
