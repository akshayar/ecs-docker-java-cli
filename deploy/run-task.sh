#!/bin/bash
. ./setenv.sh
aws ecs run-task --task-definition ${TASK_NAME} --region ${AWS_REGION_NAME} --cluster ${CLUSTER_NAME} --network-configuration  "awsvpcConfiguration={subnets=["${SUBNET}"],securityGroups=["${SECURITY_GROUP}"],assignPublicIp="ENABLED"}" --launch-type FARGATE




