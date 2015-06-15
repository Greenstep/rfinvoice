Fabricator(:epi_payment_instruction_details, from: ::RFinvoice::EpiPaymentInstructionDetails) do
  initialize_with { @_klass.new to_hash }
  epi_instructed_amount { Fabricate(:epi_amount) }
  epi_payment_instruction_id { ::SecureRandom.hex(16) }
  epi_transaction_type_code 'TST'
  epi_instruction_code { ::SecureRandom.hex(16) }
  epi_date_option_date { Fabricate(:date) }
  epi_remittance_info_identifier
  epi_charge
end
