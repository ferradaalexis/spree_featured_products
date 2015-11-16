Spree::HomeController.class_eval do
  def featured_products
    search   = params[:search] || {}
    search   = search.merge(featured: nil) # featured scope does not receive arguments
    @searcher = build_searcher(params.merge(include_images: true, search: search))
    @products = @searcher.retrieve_products
    @taxonomies = Spree::Taxonomy.includes(root: :children)

    # Render index for simplicity. Create featured_products view if you need custom display
    render :index
  end
end
