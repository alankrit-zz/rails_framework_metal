# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/home/alankrit/work/workspace/framework_analysis/rails_framework_metal"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/home/alankrit/work/workspace/framework_analysis/rails_framework_metal/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/home/alankrit/work/workspace/framework_analysis/rails_framework_metal/log/unicorn.log"
stdout_path "/home/alankrit/work/workspace/framework_analysis/rails_framework_metal/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.rails_4_1_6.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30
