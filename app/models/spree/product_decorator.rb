Spree::Product.class_eval do
  add_search_scope :featured do
    where(featured: true)
  end

  self.whitelisted_ransackable_attributes |= ['featured']
end
