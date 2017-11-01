echo './%e.core' | sudo tee /proc/sys/kernel/core_pattern
ulimit -c unlimited
