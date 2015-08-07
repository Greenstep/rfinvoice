module RFinvoice
  class PartyDetails < Model
    def self.inherited(subclass)
      super(subclass)
      prefix = subclass.name.demodulize.sub('PartyDetails', '')
      subclass.add_string_simple_properties '0_35', ["#{prefix}PartyIdentifier"], required: false
      subclass.add_simple_collections ["#{prefix}OrganisationName"], ::Array[::RFinvoice::Type::String2_35], required: false
      department_name = if prefix == 'InvoiceRecipient'
                          "#{prefix}Department"
                        else
                          "#{prefix}OrganisationDepartment"
                        end
      subclass.add_simple_collections [department_name], ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35], required: false
      subclass.add_string_simple_properties '0_35', ["#{prefix}OrganisationTaxCode"], required: false
      subclass.add_modelized_properties ["#{prefix}Code", "#{prefix}PostalAddressDetails"], required: false
    end
  end
end
