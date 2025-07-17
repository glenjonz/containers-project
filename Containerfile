FROM fedora
RUN dnf upgrade -y
RUN dnf install -y info
COPY myfile.txt /
COPY script.sh /
USER sync
ENTRYPOINT["./script.sh"]
