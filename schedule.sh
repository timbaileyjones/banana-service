#!/bin/bash
# http://docs.aws.amazon.com/AmazonCloudWatchEvents/latest/APIReference/API_PutTargets.html
#aws events put-rule \
#  --name <value> \
#  [--schedule-expression <value>] \
#  [--event-pattern <value>] \
#  [--state <value>] \
#  [--description <value>] \
#  [--role-arn <value>] \
#  [--cli-input-json <value>] \
#  [--generate-cli-skeleton <value>]

#aws events put-rule \
#  --name mu-iam-service-mu-bananas-timba-acceptance-cron-rule \
#  --schedule-expression 'cron(* * * * ? *)' \
#  --state ENABLED
# returned: arn:aws:events:us-east-1:324320755747:rule/mu-iam-service-mu-bananas-timba-acceptance-cron-rule

# https://docs.aws.amazon.com/cli/latest/reference/events/put-targets.html
#aws events put-targets \
#  --rule <value> \
#  --targets <value> \
#  [--cli-input-json <value>] \
#  [--generate-cli-skeleton <value>] \

#aws events put-targets \
#  --rule mu-iam-service-mu-bananas-timba-acceptance-cron-rule \
#  --targets '
# [ { "Id": "mu-iam-service-timba-mu-bananas-acceptance-cron-target", 
#     "Arn": "arn:aws:ecs:us-east-1:324320755747:cluster/mu-environment-acceptance",
#     "RoleArn": "arn:aws:iam::324320755747:role/mu-service-mu-banana-timba-acceptance-service-us-east-1",
#     "Input": "{\"containerOverrides\":[{\"name\":\"mu-iam-service-mu-bananas-timba-acceptance-hourly",\"command\":[\"touch /tmp/test-file\"],[{\"name\":\"x\",\"value\":\"1\"}]}]}",
#     "EcsParameters": {
#         "TaskDefinitionArn": "arn:aws:ecs:us-east-1:324320755747:task-definition/mu-service-mu-banana-timba-acceptance-MicroserviceTaskDefinition-V5BFRQT1BSIM:1", 
#         "TaskCount": 1
#     },
#     "RunCommandParameters": {
#         "RunCommandTargets": [
#             {
#                 "Key": "sample-command", 
#                 "Values": [
#                     "echo update bananas"
#                 ]
#             }
#         ]
#     }, 
#   } ] '


aws events put-targets \
  --rule mu-iam-service-mu-bananas-timba-acceptance-cron-rule \
  --targets '[ 
  { "Id": "mu-iam-service-timba-mu-bananas-acceptance-cron-target", 
     "Arn": "arn:aws:ecs:us-east-1:324320755747:cluster/mu-environment-acceptance",
     "RoleArn": "arn:aws:iam::324320755747:role/mu-service-mu-banana-timba-acceptance-service-us-east-1",
     "Input": 
      "{\"containerOverrides\":[{\"name\":\"mu-iam-service-mu-bananas-timba-acceptance-hourly\",\"command\":[\"touch /tmp/test-file\"]}]}",
     "EcsParameters": {
         "TaskDefinitionArn": "arn:aws:ecs:us-east-1:324320755747:task-definition/mu-service-mu-banana-timba-acceptance-MicroserviceTaskDefinition-V5BFRQT1BSIM:1", 
         "TaskCount": 1
     }
   } ] '




# these can be verified by:
#aws events list-targets-by-rule --rule mu-iam-service-mu-bananas-timba-acceptance-cron-rule 
#{
#    "Targets": [
#        {
#            "RoleArn": "arn:aws:iam::324320755747:role/mu-service-mu-banana-timba-acceptance-service-us-east-1", 
#            "EcsParameters": {
#                "TaskDefinitionArn": "arn:aws:ecs:us-east-1:324320755747:task-definition/mu-service-mu-banana-timba-acceptance-MicroserviceTaskDefinition-V5BFRQT1BSIM:1", 
#                "TaskCount": 1
#            }, 
#            "Id": "mu-iam-service-timba-mu-bananas-acceptance-cron-target", 
#            "Arn": "arn:aws:ecs:us-east-1:324320755747:cluster/mu-environment-acceptance"
#        }
#    ]
#}





#     "TaskDefinitionArn": "",
#  --targets '[ { "Id": "mu-iam-service-timba-mu-bananas-acceptance-cron-target", "Arn": "arn:aws:ecs:us-east-1:324320755747:task-definition/mu-service-mu-banana-timba-production-MicroserviceTaskDefinition-19VNOS1XIBK29:1" } ] '


#  --targets '{
#    "Rule": "arn:aws:events:us-east-1:324320755747:rule/mu-iam-service-mu-bananas-timba-acceptance-cron-example", 
#    "Targets": [
#        {
#            "Id": "", 
#            "Arn": "", 
#            "RunCommandParameters": {
#                "RunCommandTargets": [
#                    {
#                        "Key": "sample-command", 
#                        "Values": [
#                            "echo update bananas"
#                        ]
#                    }
#                ]
#            }, 
#            "EcsParameters": {
#                "TaskDefinitionArn": "arn:aws:ecs:us-east-1:324320755747:task-definition/mu-service-mu-banana-timba-acceptance-MicroserviceTaskDefinition-V5BFRQT1BSIM:1", 
#                "TaskCount": 1
#            }
#        }
#    ]
#}'


#aws ecs list-task-definitions   
#returns
#        "arn:aws:ecs:us-east-1:324320755747:task-definition/mu-service-mu-banana-timba-acceptance-MicroserviceTaskDefinition-V5BFRQT1BSIM:1", 
#        "arn:aws:ecs:us-east-1:324320755747:task-definition/mu-service-mu-banana-timba-production-MicroserviceTaskDefinition-19VNOS1XIBK29:1"
#
