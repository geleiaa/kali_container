FROM kalilinux/kali-rolling

LABEL name="bugb tools kali container"
LABEL version="1.0"

RUN apt update

RUN apt install -y wget; \
        wget https://go.dev/dl/go1.22.3.linux-amd64.tar.gz -O /tmp/go.tar.gz; \
        rm -rf /usr/local/go; \
        tar -C /usr/local -xzf /tmp/go.tar.gz; \
        rm /tmp/go.tar.gz; \
        echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/profile; \
        echo "export PATH=$PATH:/usr/local/go/bin" >> $HOME/.profile; \
        go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest; \
        go install github.com/tomnomnom/unfurl@latest; \
        mv /root/go/bin/unfurl /usr/bin/; \
        go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest; \
        mv /root/go/bin/httpx /usr/bin/; \
        go install github.com/tomnomnom/waybackurls@latest; \
        mv /root/go/bin/waybackurls /usr/bin/; \
        go install github.com/hakluke/hakrawler@latest; \
        mv /root/go/bin/hakrawler /usr/bin/; \
        go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest; \
        mv /root/go/bin/naabu /usr/bin/; \
        go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest; \
        mv /root/go/bin/nuclei /usr/bin/; \
        nuclei -update-templates; \

