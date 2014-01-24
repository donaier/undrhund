if Rails.env.development?
  Paperclip::Attachment.default_options[:url] = '/public/uploads'
else
  Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
end

Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
