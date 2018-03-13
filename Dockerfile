FROM node:latest

EXPOSE 8080
COPY . /opt/app
WORKDIR /opt/app
RUN yarn global add @angular/cli
RUN yarn install

ENTRYPOINT ["/bin/bash"]
CMD [ "/opt/app/entrypoint.sh" ]
