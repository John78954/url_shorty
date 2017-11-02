class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  Shortener::ShortenedUrl.generate("http://example.com")
  short_url("http://example.com")
  short_url("http://example.com", url_options: { subdomain: 'foo', host: 'bar', protocol: 'https' } )
end
