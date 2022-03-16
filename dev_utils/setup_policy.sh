gcloud config set project $PROJECT_ID
gcloud dataproc autoscaling-policies import jobsity_autoscaling_dataproc \
    --source=autoscaling_policy.yaml \
    --project=$PROJECT_ID \
    --region=southamerica-east1