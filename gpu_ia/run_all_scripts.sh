#!/bin/bash

LOG_DIR=/logs

mkdir -p "$LOG_DIR"

for script in /run_scripts/*.sh; do
    script_name=$(basename "$script" .sh)
    log_file="$LOG_DIR/${script_name}.log"

    echo "Rodando $script em background. Logs em $log_file"

    bash "$script" > "$log_file" 2>&1 &
done

wait
echo "Todos os scripts foram executados."
