Spree::Product.class_eval do
  add_search_scope :featured do
    where(featured: true)
  end
end
