#!/usr/bin/env bash
cls_cmd.sh "sudo systemctl stop ganglia-monitor"
cls_cmd.sh "sudo systemctl start ganglia-monitor"
