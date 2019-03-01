#!/usr/bin/env bash
# Author: alexander
# Thu Feb 28 20:57:12 CST 2019
FILENAME="${1}.sh"
cat > $FILENAME << EOF
#!/usr/bin/env bash
# Author: ${USER}
# $(date)
EOF
chmod 700 $FILENAME



