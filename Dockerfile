FROM node:18 AS Install

RUN mkdir /app

COPY ./.npmrc /app/
COPY ./package*.json /app/
COPY ./patches /app/patches

WORKDIR /app

FROM httpd:2.4