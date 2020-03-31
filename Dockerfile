FROM mdillon/postgis:11

RUN apt-get update -y
RUN apt-get install -y build-essential bundler gnupg2 \
                     libmagickwand-dev libxml2-dev libxslt1-dev nodejs \
                     apache2 apache2-dev build-essential git-core phantomjs \
                     postgresql postgresql-contrib libpq-dev libsasl2-dev \
                     imagemagick libffi-dev libgd-dev libarchive-dev libbz2-dev
RUN apt-get install -y libssl-dev gawk g++ \
make libreadline6-dev zlib1g-dev \
libyaml-dev libsqlite3-dev sqlite3 autoconf \
libgdbm-dev libncurses5-dev libtool bison nodejs \
pkg-config libffi-dev libgmp-dev libgmp-dev git \
dirmngr
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys \
409B6B1796C275462A1703113804BB82D39DC0E3 \
7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN curl -sSL https://get.rvm.io | bash
RUN . /etc/profile.d/rvm.sh
RUN /usr/local/rvm/bin/rvm install 2.5
#RUN gem2.5 install bundler
