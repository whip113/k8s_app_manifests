#!/bin/bash
kubectl scale deployment conjur-follower --replicas=0 -n conjur && kubectl scale deployment conjur-follower --replicas=1 -n conjur
