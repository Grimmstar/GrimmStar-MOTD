# Colors
CA="\e[34m"  # Accent
CO="\e[32m"  # Ok
CW="\e[33m"  # Warning
CE="\e[31m"  # Error
CN="\e[0m"   # None

# Max width used for components in second column
WIDTH=50

# Services to show
# declare -A services
# services["nginx"]="Nginx"
# services["docker"]="Docker"
# services["sshd"]="SSH"
# services["heroku"]="Heroku"
# services["ufw"]="UFW"
# services["postgresql"]="Postgresql"
# services["aws"]="AWS"

PUBLIC_IP=$(dig +short myip.opendns.com @resolver1.opendns.com)
PRIVATE_IP=$(ip addr | awk '/inet / {sub(/\/.*/, "", $2); print $2}' | tail -n 1)
UPTIME=$(uptime -p)
LOAD=$(uptime | sed -E 's@.*averages?: ?@@g')