require_relative 'mrss_content'
require_relative 'mrss_credit'
require_relative 'mrss_restriction'

module Feedzirra
  module Parser
    module MediaRSSElements

      def self.included(base)
        base.class_eval do
          element :'media:thumbnail', :as => :media_thumbnail, :value => :url
          element :'media:thumbnail', :as => :media_thumbnail_width, :value => :width
          element :'media:thumbnail', :as => :media_thumbnail_height, :value => :height
          element :'media:description', :as => :media_description

          element :'media:rating', :as => :rating
          element :'media:rating', :value => :scheme, :as => :rating_scheme

          element :'media:title', :as => :media_title
          element :'media:keywords', :as => :media_keywords

          element :'media:text', :as => :media_text
          element :'media:text', :as => :media_text_type, :value => :type

          element :'media:category', :as => :media_category
          element :'media:category', :value => :scheme, :as => :media_category_scheme
          element :'media:category', :value => :label, :as => :media_category_label

          element :'media:hash', :as => :media_hash
          element :'media:hash', :value => :algo, :as => :media_hash_algo

          element :'media:player', :value => :url, :as => :media_player_url
          element :'media:player', :value => :width, :as => :media_player_width
          element :'media:player', :value => :height, :as => :media_player_height

          elements :'media:credit', :as => :credits, :class => MRSSCredit

          element :'media:copyright', :as => :copyright
          element :'media:copyright', :as => :copyright_url, :value => :url

          element :'media:restriction', :as => :media_restriction, :class => MRSSRestriction

          elements :'media:content', :as => :media_content, :class => MRSSContent
        end
      end
    end
  end
end
