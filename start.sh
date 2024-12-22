if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/mariodonar/mariodonarreal.git /mariodonarreal
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /mariodonarreal
fi
cd /mariodonarreal
pip3 install -U -r requirements.txt
echo "Starting TheMovieProviderBot...."
python3 bot.py
