module FormHelper
  def lang_specific_field(builder, field, label, type = :text_field)
    html = ""
    I18n.available_locales.each do |locale|
      lang_translation = "head.language_#{locale}"
      html += content_tag(:div, builder.label("#{field}_#{locale}", "#{label} (#{t(lang_translation)})"), :class => "question")
      html += content_tag(:div, builder.send(type, "#{field}_#{locale}"))
    end
    html
  end
end