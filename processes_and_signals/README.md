# Processes and Signals

A collection of Bash scripts for managing processes and signals in Linux.

## Scripts

| File | Description |
|------|-------------|
| `0-what-is-my-pid` | Displays the script's own PID |
| `1-list_your_processes` | Lists all running processes for all users with hierarchy |
| `2-show_your_bash_pid` | Displays lines containing "bash" from the process list |
| `3-show_your_bash_pid_made_easy` | Displays PID and name of processes containing "bash" |
| `4-to_infinity_and_beyond` | Prints "To infinity and beyond" indefinitely with 2s pause |
| `5-dont_stop_me_now` | Stops the `4-to_infinity_and_beyond` process using `kill` |
| `6-stop_me_if_you_can` | Stops the `4-to_infinity_and_beyond` process without `kill` or `killall` |
| `7-highlander` | Runs indefinitely; prints "I am invincible!!!" on SIGTERM |
| `67-stop_me_if_you_can` | Stops the `7-highlander` process |
| `8-beheaded_process` | Kills the `7-highlander` process with SIGKILL |
| `10-process_and_pid_file` | Manages a PID file and handles SIGTERM, SIGINT, SIGQUIT |
| `manage_my_process` | Daemon that writes "I am alive!" to `/tmp/my_process` every 2s |
| `11-manage_my_process` | Init script to start, stop, or restart `manage_my_process` |

## Usage

```bash
chmod +x <script-name>
```
