xrdb -merge ~/.Xresources

eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

{
  sleep 1;
  xinput disable 12;
  setxkbmap -option caps:ctrl_modifier;
  hsetroot -cover ~/Downloads/sand.jpg;
  polybar -r example
} &
sxhkd &
exec openbox-session
