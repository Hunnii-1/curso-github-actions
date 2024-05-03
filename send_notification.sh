#!/bin/bash
# Script to send a notification about the workflow status

echo "Preparing to send a notification..."
echo "Workflow: $GITHUB_WORKFLOW"
echo "Run ID: $GITHUB_RUN_ID"
echo "Status: $1"
echo "Sending notification to: $NOTIFICATION_EMAIL"
# Aquí podrías integrar un comando para enviar realmente la notificación, como un curl a una API de Slack.