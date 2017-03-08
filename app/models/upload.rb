class Upload < ApplicationRecord

has_attached_file :image,
                storage: :s3,
              	s3_credentials: {access_key_id: ENV["AWS_KEY"], 
              	secret_access_key: ENV["AWS_SECRET"]},
              	bucket: "yghdassets"

validates_attachment_content_type :image, content_type: [/\Avideo\/.*\Z/, /\Aimage\/.*\Z/, /\Aapplication\/.*\Z/]

end
