module RFinvoice
  class InvoiceRow < Model
    add_string_simple_properties '0_35', %w(RowSubIdentifier ArticleIdentifier ArticleGroupIdentifier), required: false
    add_string_simple_properties '0_100', %w(ArticleName), required: false
    add_string_simple_properties '0_512', %w(ArticleInfoUrlText), required: false
    add_string_simple_properties '0_35', %w(BuyerArticleIdentifier EanCode RowRegistrationNumberIdentifier), required: false
    add_string_simple_properties '0_35', %w(SerialNumberIdentifier RowActionCode), required: false

    add_date_properties %w(StartDate EndDate), required: false
    add_string_simple_properties '0_35', %w(), required: false
  end
end
