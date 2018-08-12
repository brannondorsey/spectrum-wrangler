echo "waiting 10 seconds to allow postgres server to come up"
sleep 10

echo "running load.py, this may take a few hours..."
python load.py

echo "Done."