FROM perl:latest



WORKDIR /plerd

COPY . /plerd
RUN cpanm --installdeps . --force 
RUN perl Makefile.PL
RUN make && make install
