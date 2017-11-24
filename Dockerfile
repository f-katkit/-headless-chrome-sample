FROM python:3.6

# install basic tools
RUN set -x \
  && apt-get update -qq \
  && apt-get install -yyq --no-install-recommends build-essential wget vim git sudo unzip \
  && apt-get install -yyq ca-certificates \
  && apt-get install -yyq libappindicator1 libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 \
  && apt-get install -yyq gconf-service lsb-release wget xdg-utils \
  && apt-get install -yyq fonts-liberation fonts-ipafont-gothic fonts-ipafont-mincho

# install google chrome
RUN set -x \
  && curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
  && dpkg -i google-chrome-stable_current_amd64.deb \
  && rm -rf google-chrome-stable_current_amd64.deb \
  && wget https://chromedriver.storage.googleapis.com/2.29/chromedriver_linux64.zip \
  && unzip chromedriver_linux64.zip \
  && mv chromedriver /usr/local/bin/

WORKDIR /root

RUN set -x \
  && sudo pip install selene --pre \
  && sudo pip install six

ADD sample_selene.py /root/
CMD /bin/bash
