# If the configuration sets `open_external_links_in_new_tab` to a truthy value,
# add 'target=_blank' to anchor tags pointing at *other* sites.
#
# Links that stay in the current tab: site-relative hrefs ("/foo"), in-page
# anchors ("#foo"), mailto:/tel: links, and absolute URLs on our own domain.

# frozen_string_literal: true
require 'nokogiri'
require 'uri'

Jekyll::Hooks.register [:notes], :post_convert do |doc|
  convert_links(doc)
end

Jekyll::Hooks.register [:pages], :post_convert do |doc|
  # jekyll considers anything at the root as a page,
  # we only want to consider actual pages
  next unless doc.path.start_with?('_pages/')
  convert_links(doc)
end

def external_link?(href, site_host)
  return false if href.nil? || href.empty?
  return false if href.start_with?('#', '/')

  uri = URI.parse(href)
  return false unless %w[http https].include?(uri.scheme) # mailto:, tel:, relative
  return false if site_host && uri.host && uri.host.sub(/\Awww\./, '') == site_host

  true
rescue URI::InvalidURIError
  false
end

def convert_links(doc)
  return unless doc.site.config["open_external_links_in_new_tab"]

  site_host = begin
    URI.parse(doc.site.config["url"].to_s).host&.sub(/\Awww\./, '')
  rescue URI::InvalidURIError
    nil
  end

  parsed_doc = Nokogiri::HTML::DocumentFragment.parse(doc.content)
  parsed_doc.css("a:not(.internal-link):not(.footnote):not(.reversefootnote)").each do |link|
    next unless external_link?(link.get_attribute('href'), site_host)

    link.set_attribute('target', '_blank')
    link.set_attribute('rel', 'noopener')
  end
  doc.content = parsed_doc.inner_html
end
