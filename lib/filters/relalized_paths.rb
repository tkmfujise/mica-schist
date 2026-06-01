# lib/filters/relativize_paths_ext.rb
module Nanoc
  module Filters
    class RelativizePaths
      remove_const(:SELECTORS)

      SELECTORS = [
        '*/@href',
        '*/@src',
        '*/@data-src', # Added
        'object/@data',
        'video/@poster',
        'param[@name="movie"]/@value',
        'form/@action',
        'comment()',
        { path: '*/@srcset', type: :srcset },
      ].freeze
    end
  end
end
