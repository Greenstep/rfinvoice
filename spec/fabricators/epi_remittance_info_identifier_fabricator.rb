Fabricator(:epi_remittance_info_identifier, from: ::RFinvoice::EpiRemittanceInfoIdentifier) do
  initialize_with { @_klass.new to_hash }
  value { sequence(:epi_remittance_info_identifier, 10).to_s }
  scheme 'SPY'
end
