Paperclip::Attachment.default_options.update({
  storage: :s3,
  s3_credentials: {
    bucket: ENV['AWS_BUCKET_NAME'],
    access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    s3_region: ENV['AWS_REGION']
  },
  s3_protocol: 'https',
  url: ':s3_alias_url',
  path: '/:class/:attachment/:id_partition/:style/:filename',
  s3_host_alias: 's3.amazonaws.com/YOUR_BUCKET_NAME',
  s3_options: {
    # Remova ou comente a configuração de acl, pois o bucket não permite ACLs
    # acl: nil
  }
})
