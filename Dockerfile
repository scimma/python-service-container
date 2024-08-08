FROM rockylinux:8.8

RUN dnf -y upgrade --refresh rpm glibc
RUN rm /var/lib/rpm/.rpm.lock
RUN dnf -y upgrade dnf

RUN dnf -y install python39
RUN update-alternatives --set python3 /usr/bin/python3.9

RUN python3.9 -m pip install boto3 'confluent-kafka==2.4.0' 'hop-client==0.10.0' pytz