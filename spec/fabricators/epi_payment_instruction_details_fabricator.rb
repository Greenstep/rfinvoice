Fabricator(:epi_payment_instruction_details, from: ::RFinvoice::EpiPaymentInstructionDetails) do
  initialize_with { @_klass.new to_hash }
end
