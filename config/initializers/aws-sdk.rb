S3Client = Aws::S3::Client.new(
    access_key_id: 'AWSAccessKeyId',
    secret_access_key: 'AWSSecretKey',
    region: 'AWS_REGION',
    bucket: 'S3_BUCKET_NAME'
)
