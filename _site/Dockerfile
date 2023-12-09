FROM debian:bookworm-slim

EXPOSE 4000

WORKDIR /nejputin.se
RUN apt-get update && apt-get install jekyll -y 

ENTRYPOINT ["jekyll", "serve", "--host", "0.0.0.0"]
