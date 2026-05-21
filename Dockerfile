FROM rockylinux:9.3

RUN dnf -y upgrade --refresh rpm glibc
RUN rm /var/lib/rpm/.rpm.lock
RUN dnf -y upgrade dnf

RUN dnf -y install python3.12 python3.12-pip

RUN python3.12 -m pip install boto3 'confluent-kafka==2.11.1' 'hop-client==0.12.1' pytz