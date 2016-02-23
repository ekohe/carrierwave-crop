class GuillotineGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("../templates", __FILE__)

  desc "This generator creates a cropper file (guillotine style) at app/assets/javascripts"

 argument :attachment_name, :required => true, :type => :string, :desc => "The names of the attachment to crop.",
           :banner => "attachment_name"

  def create_guillotine_file
    template "carrierwave_guillotine.js.coffee", File.join('app/assets/javascripts', class_path, "#{file_name.pluralize}.js.coffee")
  end
end
