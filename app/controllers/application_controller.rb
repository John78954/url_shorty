class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  Shortener::ShortenedUrl.generate("http://example.com")
  short_url("http://example.com")
  short_url("http://example.com", url_options: { subdomain: 'foo', host: 'bar', protocol: 'https' } )
end
