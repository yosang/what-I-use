# Installation

Install node
```sh
sudo dnf install node
```

# Yarn
Install yarn, either through npm or if available in dnf

npm
```sh
npm install -g yarn
```

dnf
```sh
sudo dnf install yarn
```

Disable yarn telemetry
```sh
yarn config set --home enableTelemetry 0
```