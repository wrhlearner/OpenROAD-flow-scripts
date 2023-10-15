if [[ "$OSTYPE" == "darwin"* ]]; then
  modroot="$(dirname $(perl -e 'use Cwd "abs_path";print abs_path(shift)' "${BASH_SOURCE[0]}"))/tools"
else
  modroot="$(dirname $(readlink -f "${BASH_SOURCE[0]}"))/tools"
fi

if [ ! -d "${modroot}" ]; then
  echo "Module path does not exist: ${modroot}"
  return 1
fi

if [ -f /opt/rh/rh-python38/enable ]; then
  source /opt/rh/rh-python38/enable
fi

export OPENROAD=${modroot}/OpenROAD
echo "OPENROAD: ${OPENROAD}"

export PATH=${modroot}/install/OpenROAD/bin:${modroot}/install/yosys/bin:${modroot}/install/LSOracle/bin:$PATH

if [[ "$OSTYPE" == "darwin"* ]]; then
  export PATH="/Applications/KLayout/klayout.app/Contents/MacOS:$PATH"
  export PATH="$(brew --prefix bison)/bin:$(brew --prefix flex)/bin:$(brew --prefix tcl-tk)/bin:$PATH"
  export CMAKE_PREFIX_PATH="$(brew --prefix or-tools)"
fi

# For Makefile environment
BASHRC_FILE=~/.bashrc
if ! grep -q "MAKEFILE_ENV" "$BASHRC_FILE"; then
    cat <<EOL >> "$BASHRC_FILE"
if [ -n "\$MAKEFILE_ENV" ]; then
    PS1='\[\e[32m\]Makefile Environment \[\e[0m\] \w $ '
fi
EOL
    source "$BASHRC_FILE"
    echo "Bashrc changes applied"
else
    echo "Bashrc changes already made"
fi

