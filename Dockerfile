
FROM node:22-alpine

WORKDIR /app

COPY package.json pnpm-lock.yaml ./

RUN npm install -g pnpm && pnpm install --frozen-lockfile

COPY . .

RUN pnpm db:generate

RUN pnpm run build:prod

EXPOSE 8000

CMD ["node", "dist/server.js"]
