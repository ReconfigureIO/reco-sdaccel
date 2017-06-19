'use strict';

const AWS = require('aws-sdk');

const batch = new AWS.Batch({apiVersion: '2016-08-10'});
const cloudwatch = new AWS.CloudWatch({apiVersion: '2010-08-01'});

const JOB_QUEUE = process.env.job_queue;
const METRIC = process.env.metric;

exports.myHandler = (event, context, callback) => {
  const params = {
    jobQueue: JOB_QUEUE,
    jobStatus: "RUNNABLE"
  };
  batch.listJobs(params, function(err, data){
    if (err) {
      return callback(err);
    }
    const metric = {
      MetricData: [ /* required */
        {
          MetricName: 'QueueDepth',
          Timestamp: new Date(),
          Unit: 'Count',
          Value: data.jobSummaryList.length
        }
      ],
      Namespace: METRIC
    };
    cloudwatch.putMetricData(metric, function(err, data){
      if (err) {
        return callback(err);
      }
    });
  });
};
