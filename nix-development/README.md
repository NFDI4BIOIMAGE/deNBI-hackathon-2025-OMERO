# Deployment
```
# git init && git add * && git commit -m 'initial commit'
direnv allow .
uv python install 3.12
uv venv --python 3.12

git clone git@github.com:German-BioImaging/omero-tagsearch.git
git clone git@github.com:ome/omero-iviewer.git
git clone git@github.com:ome/omero-figure.git
git clone git@github.com:ome/omero-py.git
git clone git@github.com:ome/omero-web.git
git clone git@github.com:will-moore/parade-crossfilter.git
git clone git@github.com:ome/docker-example-omero.git

uv sync
source ./venv/bin/activate

cd omero-figure
npm install
npm run start

cd omero-iviewer
npm install
sed -i '1s|^#!.*|#!/usr/bin/env bash|' *.sh 2>/dev/null || true
npm run debug

cd docker-example-omero
sed -i '1s|^#!.*|#!/usr/bin/env bash|' *.sh 2>/dev/null || true
docker compose up -d

connect to https://127.0.0.1:4080 
# user root password omero
```
