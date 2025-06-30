# _plugins/image_finder_tag.rb

module Jekyll
  class ImageFinderTag < Liquid::Tag
    def initialize(tag_name, basename, tokens)
      super
      @basename = basename.strip
    end

    def render(context)
      site = context.registers[:site]
      base_path = site.source
      
      # Define potential file paths relative to the source directory
      potential_extensions = ['.jpg', '.jpeg', '.png', '.gif']
      image_dir = 'images'

      found_image = nil
      potential_extensions.each do |ext|
        potential_file = File.join(base_path, image_dir, @basename + ext)
        if File.exist?(potential_file)
          # Return relative path without leading slash to work with baseurl
          found_image = File.join(image_dir, @basename + ext)
          break
        end
      end
      
      found_image
    end
  end
end

Liquid::Template.register_tag('find_image', Jekyll::ImageFinderTag) 