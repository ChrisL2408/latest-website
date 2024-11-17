require 'mini_magick'

Jekyll::Hooks.register :site, :after_init do |site|
  def optimize_image(path)
    image = MiniMagick::Image.open(path)
    image.resize "1200x627!" # Twitter card dimensions
    image.quality "85"       # Reduce file size
    image.write path
  end

  # Optimize default image
  if site.config['default_image']
    image_path = File.join(site.source, site.config['default_image'])
    optimize_image(image_path) if File.exist?(image_path)
  end
end 