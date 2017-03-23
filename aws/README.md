# To deploy

`aws batch register-job-definition --cli-input-json file://batch.json`

# To run

```
aws batch submit-job --cli-input-json file://job_submit.json                                                                                                                                                                                             branch: (aws-support)
{
    "jobName": "example",
    "jobId": "53e11480-2f90-4484-8e24-2131fc92b841"
}
aws batch describe-jobs --jobs 53e11480-2f90-4484-8e24-2131fc92b841
```
