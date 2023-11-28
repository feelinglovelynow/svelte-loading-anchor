#!/bin/bash
rm -rf ./dist ./tsc &&
pnpm tsc &&
node ./esbuild.js &&
cp ./src/LoadingAnchor.svelte ./dist/LoadingAnchor.svelte
