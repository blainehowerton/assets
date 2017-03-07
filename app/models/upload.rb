class Upload < ApplicationRecord

has_attached_file :image,
                :styles => lambda{ |a|
                              a.instance.image_content_type =~ %r(image) ? 
                              {:thumb => "100x100#", 
                              :medium => "300x300>" }: {}
                             },
                              storage: :s3,
                              s3_credentials: {access_key_id: ENV["AWS_KEY"], secret_access_key: ENV["AWS_SECRET"]},
                                              bucket: "yghdassets"

validates_attachment_content_type :image, content_type: [/\Aimage\/.*\Z/, /pdf\Z/]

end
