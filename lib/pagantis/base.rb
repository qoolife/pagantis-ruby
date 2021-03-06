module Pagantis
  class Base < ActiveResource::Base
    include Pagination

    self.site = 'https://psp.pagantis.com/api/1'
    self.include_root_in_json = true
    self.collection_parser = BaseCollection
    
    def self.token=(token)
      self.headers['Authorization'] = "Bearer #{token}"
    end
  end
end
