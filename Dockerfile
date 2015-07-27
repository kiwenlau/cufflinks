FROM python:2.7
MAINTAINER nasuno@ascade.co.jp

WORKDIR /tmp
ADD http://cole-trapnell-lab.github.io/cufflinks/assets/downloads/cufflinks-2.2.1.Linux_x86_64.tar.gz cufflinks-2.2.1.Linux_x86_64.tar.gz
RUN tar zxf cufflinks-2.2.1.Linux_x86_64.tar.gz
RUN cp cufflinks-2.2.1.Linux_x86_64/* /usr/local/bin/
RUN rm -rf cufflinks*

RUN pip install mercurial
RUN hg clone https://toolshed.g2.bx.psu.edu/repos/devteam/cufflinks
RUN cp cufflinks/cufflinks_wrapper.py /usr/local/bin/