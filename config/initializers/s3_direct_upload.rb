S3DirectUpload.config do |c|
  c.access_key_id = "AKIAJ22DJS3AXC5YFVBA"       # your access key id
  c.secret_access_key = "5txLsFQAwK4etmGC8JrXvKFQaq3jucIAE3wJEFEh"   # your secret access key
  c.bucket = "yghdassets"              # your bucket name
  c.region = "us-east-1"            # region prefix of your bucket url. This is _required_ for the non-default AWS region, eg. "s3-eu-west-1"
  c.url = nil                # S3 API endpoint (optional), eg. "https://#{c.bucket}.s3.amazonaws.com/"
end