FROM ruby:3.0.1

# add nodejs and yarn dependencies for the frontend
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Instala nossas dependencias
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
nodejs yarn build-essential libpq-dev imagemagick git-all nano graphviz

# ENV CHROMIUM_DRIVER_VERSION 2.46

# RUN apt-get update && apt-get -y --no-install-recommends install zlib1g-dev liblzma-dev wget xvfb unzip libnss3 nodejs \
#     && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -  \
#     && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list \
#     && echo "deb http://ftp.de.debian.org/debian/ stretch main" >> /etc/apt/sources.list \
#     && apt-get update && apt-get -y --allow-unauthenticated  --no-install-recommends install google-chrome-stable \
#     && rm -rf /var/lib/apt/lists/*

# RUN wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/$CHROMIUM_DRIVER_VERSION/chromedriver_linux64.zip \
#     && unzip /tmp/chromedriver.zip chromedriver -d /usr/bin/ \
#     && rm /tmp/chromedriver.zip \
#     && chmod ugo+rx /usr/bin/chromedriver

RUN echo 'alias rspec="bundle exec rspec"' >> ~/.bashrc && \
    echo 'alias rails="bundle exec rails"' >> ~/.bashrc

# env var with workdir path
ENV INSTALL_PATH /aact_form_engine

# create workdir
RUN mkdir -p $INSTALL_PATH

# define initial location of the container
WORKDIR $INSTALL_PATH

# copy Gemfile to container
COPY Gemfile ./

# gems path
ENV BUNDLE_PATH /gems

# copy application dir to container
COPY . .

