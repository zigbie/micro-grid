#!/bin/bash
# Requires watchr: https://github.com/mynyml/watchr
watchr -e 'watch(".*\.less$") { |f| system("lessc #{f[0]} > $(echo #{f[0]} | cut -d\. -f1).css && echo \"#{f[0]} > $(echo #{f[0]} | cut -d\. -f1).css\" ") }'
