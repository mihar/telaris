# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def admin_section(klass=nil, &block)
    if admin?
     concat content_tag(:div, capture(&block), :class => 'admin')
    end
  end
  
  def languages
    available_locales = I18n.available_locales.reject {|l| l.to_s == current_locale} + [current_locale]
    available_locales.each { |l| puts link_to_language l }
  end
end
