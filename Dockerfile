-e FROM ubuntu:latest
                RUN apt-get update && apt-get install -y openssh-client sshpass
                CMD [sshpass, -p, maker, ssh, -o, StrictHostKeyChecking=no, robot@10.42.0.3, brickrun, -r, --directory=/home/robot/curve1, /home/robot/curve1/main.py]
