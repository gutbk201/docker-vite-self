FROM node:lts-bullseye-slim as base

WORKDIR /usr/src/app
COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm
RUN pnpm install --frozen-lockfile
COPY . ./

FROM base as dev
ARG VITE_PORT
ENV VITE_PORT=${VITE_PORT}
CMD [ "pnpm","dev" ]