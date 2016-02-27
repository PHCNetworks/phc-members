module Phcmember
  class Directory::Catlist < ActiveRecord::Base
    belongs_to :listing
  end
end
