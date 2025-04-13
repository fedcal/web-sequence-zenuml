FROM node:18

# Prepara il working dir
WORKDIR /app

# Installa yarn globalmente nel container (opzionale ma a volte utile)
RUN corepack enable

# Copia tutto (inclusi package.json e yarn.lock)
COPY . .

# Installa le dipendenze
RUN yarn install --frozen-lockfile || yarn install

# Espone la porta
EXPOSE 3000

# Avvia in modalità dev
CMD ["yarn", "run", "dev"]
