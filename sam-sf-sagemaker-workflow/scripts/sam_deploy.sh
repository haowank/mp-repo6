S3_BUCKET=bucket-mlops-hw-mp
S3_BUCKET_MODEL=mlops-cicd-hw-mp
STACK_NAME=sam-sf-sagemaker-workflow
sam.cmd build  -t cfn/sam-template.yaml
sam.cmd deploy --template-file .aws-sam/build/template.yaml --stack-name ${STACK_NAME} --force-upload --s3-bucket ${S3_BUCKET} \
           --s3-prefix sam --parameter-overrides S3ModelBucket=${S3_BUCKET_MODEL} --capabilities CAPABILITY_IAM