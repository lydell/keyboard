# This script “installs” the 'teck_se' layout, by “replacing” the 'se' layout.
# It is safe to run the file more than once.

# Change the following variables if needed on your system.
DIR=/usr/share/X11/xkb
RULES=$DIR/rules/evdev

CWD=$(dirname $PWD/$0)


# Symlink symbol file.
ln -s $CWD/symbols/teck_se $DIR/symbols/teck_se

# Symlink compat file.
ln -s $CWD/compat/teck_mousekeys $DIR/compat/teck_mousekeys


# Backup and patch $RULES unless it has already been done.
if [ ! -f ${RULES}_original ]
then

  # Backup.
  cp $RULES ${RULES}_original

  # Comment out a line that unconditionally adds breaking symbol rules.
  sed --in-place --regexp-extended \
    's:^\s+\*\s+=\s+\+inet\(evdev\)$://&:' $RULES

  # Append new rules for the 'se' layout. The new rules tells the system to use
  # the symlinked files instead of the 'se' files for the 'se' layout. So the
  # actual 'se' files aren’t replaced, they’re only told not to be used.
  cat $CWD/evdev-ext >> $RULES

else
  echo "$RULES already patched."
fi


# Reload keyboard settings.
setxkbmap
