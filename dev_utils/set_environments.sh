export BUCKET_NAME=jobsity_challenge
export PROJECT_ID=$(gcloud config get-value core/project)
export PROJECT_NUMBER=$(gcloud projects list --filter="$(gcloud config get-value project)" --format="value(PROJECT_NUMBER)")
