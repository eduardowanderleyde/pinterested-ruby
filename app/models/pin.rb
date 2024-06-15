# app/models/pin.rb
class Pin < ApplicationRecord
  belongs_to :user
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, 
                            default_url: "/images/:style/missing.png",
                            storage: :s3,
                            s3_credentials: {
                              bucket: ENV.fetch('AWS_BUCKET_NAME'),
                              access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
                              secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
                              s3_region: ENV.fetch('AWS_REGION')
                            },
                            url: ':s3_domain_url',
                            path: '/:class/:attachment/:id_partition/:style/:filename'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
