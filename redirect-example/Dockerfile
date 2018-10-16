FROM ruby:2.4-alpine3.6
WORKDIR /home/app
COPY    .   .
RUN bundle install
RUN addgroup -S app \
  && adduser app -S -G app
RUN chown app:app -R /home/app
WORKDIR /home/app

HEALTHCHECK --interval=5s CMD [ -e /tmp/.lock ] || exit 1

USER app
CMD ["ruby", "main.rb"]
