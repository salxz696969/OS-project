#!/bin/bash
LOG_FILE="$(pwd)/script.log"
log_action() {
    echo "[$(date)] $1" | tee -a "$LOG_FILE"
}
