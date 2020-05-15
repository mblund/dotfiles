#/bin/sh

PRG="$0"
if [ -L "$PRG" ]; then
  PRG=`readlink -fn "$PRG"`
fi
PRGDIR=`dirname "$PRG"`
cd $PRGDIR

cat dotfiles_to_sync.txt | while read line;
do
   colordiff -U 2  ~/$line ./$line
done