Spree::Admin::BaseHelper.module_eval do
	def display_featured_icon(product)
    content_tag(:i, '', class: "glyphicon glyphicon-#{ product.featured ? 'ok' : 'remove'}")
  end
end