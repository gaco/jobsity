STORAGE_CLASS=Standard
BUCKET_LOCATION=southamerica-east1

# Bucket Creation
gsutil mb -p $PROJECT_ID -c $STORAGE_CLASS -l $BUCKET_LOCATION -b on gs://$BUCKET_NAME

# Move code 
gsutil cp -r ../spark_jobs/* gs://$BUCKET_NAME
