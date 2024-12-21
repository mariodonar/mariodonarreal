if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/oseauto/mario-donar.git /mario-donar
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /mario-donar
fi
cd /mario-donar
pip3 install -U -r requirements.txt
echo "Starting TheMovieProviderBot...."
python3 bot.py
