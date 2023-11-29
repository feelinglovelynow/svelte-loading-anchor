#!/bin/bash
rm -rf ./dist ./tsc &&
pnpm tsc &&
node ./esbuild.js &&
cp ./src/index.ts ./dist/index.ts
cp ./src/LoadingAnchor.svelte ./dist/LoadingAnchor.svelte
cp ./src/LoadingAnchor.svelte.d.ts ./dist/LoadingAnchor.svelte.d.ts
