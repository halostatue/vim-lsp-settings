#!/bin/sh

set -e

mkdir -p vendor
gem install --no-document --install-dir vendor standard

cat <<EOF >standardrb
#!/bin/sh

DIR=\$(cd \$(dirname \$0); pwd)
$DIR/vendor/bin/standardrb \$*
EOF

chmod +x standardrb
