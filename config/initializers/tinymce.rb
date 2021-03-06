Tinymce::Hammer.plugins = %w(safari table paste tabfocus)

Tinymce::Hammer.init = [
  [:paste_convert_headers_to_strong, true],
  [:paste_convert_middot_lists, true],
  [:paste_remove_spans, true],
  [:paste_remove_styles, true],
  [:paste_strip_class_attributes, true],
  [:theme, 'advanced'],
  [:theme_advanced_toolbar_align, 'left'],
  [:theme_advanced_toolbar_location, 'top'],
  [:theme_advanced_buttons1, 'undo,redo,pastetext,|,bold,italic,removeformat,|,link,unlink,image,|,tablecontrols,|,cleanup,code'],
  [:theme_advanced_buttons2, ''],
  [:theme_advanced_buttons3, ''],
  [:valid_elements, "a[href|title],blockquote[cite],br,caption,cite,code,dl,dt,dd,em,i,img[src|alt|title|width|height|align],li,ol,p,pre,q[cite],small,strike,strong/b,sub,sup,u,ul,table,tr,td[rowspan|colspan],th[rowspan|colspan|class],thead,tbody"],
]