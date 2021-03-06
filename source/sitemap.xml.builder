xml.instruct!
xml.urlset xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9" do
  pages = sitemap.resources.select do |page|
    page.path =~ /\.html/
  end

  pages.each do |page|
    xml.url do
      xml.loc "https://odlow#{page.url}"
    end
  end
end
