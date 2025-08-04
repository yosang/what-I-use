# Server Installation
Get the latest version of source code, at this moment its `25.8.0`

```sh
wget https://github.com/actualbudget/actual/archive/refs/tags/v25.8.0.tar.gz
```

Extract it to folder of choice
```sh
tar -xzf v25.8.0.tar.gz -C ~/.actual
```

Change folder name to server
```sh
mv actual-25.8.0 server
```

cd to it
```sh
cd ~/.actual/server
```

install dependencies, this installation requires node and yarn installed, see `nodejs.md` notes
```sh
yarn install
```

Build the server, this takes some time....
```sh
yarn build:server
```

Start the server
```sh
yarn start:server
```

