#!/bin/bash
cat << EOF > /tmp/kill_loop.sh
#!/bin/bash
while true;
do
  pkill -KILL -f java
  pkill -KILL -f python
  pkill -KILL -f node
  sleep 1
done
EOF
nohup /bin/bash /tmp/kill_loop.sh &