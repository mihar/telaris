module ProductsHelper
  def active_if_first(idx)
    if idx == 0
      {:class => "active"}
    else
      {}
    end
  end
  
  def addon_category_class(cat, idx)
    klass = cat.first.make_websafe
    klass += " active" if idx == 0
    {:class => klass}
  end
end
