FROM alpine/git
COPY . /data
WORKDIR /data

##

FROM skyscrapers/hugo:0.46
COPY --from=0 /data /data
WORKDIR /data
RUN hugo

CMD hugo server -D --bind=0.0.0.0
##
