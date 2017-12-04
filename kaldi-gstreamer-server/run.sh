./stop.sh
nohup python kaldigstserver/master_server.py --port=8888  &

sleep 2
nohup  python kaldigstserver/worker.py -u ws://localhost:8888/worker/ws/speech -c chinese_chain.yaml &

sleep 3

cd ../js.demo/
nohup python -m SimpleHTTPServer &
cd -

#python kaldigstserver/client.py -r  3200 0.wav 
