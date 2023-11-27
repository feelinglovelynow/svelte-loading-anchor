# 🕉 @feelinglovelynow/svelte-loading-anchor


## 💎 Install
```bash
pnpm add @feelinglovelynow/svelte-loading-anchor
```


## 🙏 Description
* SvelteKit component that shows a loading icon when clicked and stops loading after the page navigates
* Will not show loading icon if `href` is to the current page
* Supports `<slot />` to add anything in the anchor


## 💚 Properties
```ts
export let href: string = '/'
export let label: string = ''
export let css: string = '' // classes to add to anchor
export let widthRem: number = 1.8 // equivalent to 18px
```


## 💛 Prerequisite CSS (available at @feelinglovelynow/global-style)
Requires [@feelinglovelynow/global-style](https://github.com/feelinglovelynow/global-style) or add this css to your site
```css
.fln__circle-load {
  width: 3rem;
  aspect-ratio: 1/1;
  border-width: 0.27rem;
  border-style: solid;
  border-radius: 100%;
  animation: fln__circle-load__spin 0.8s infinite linear;
}

@keyframes fln__circle-load__spin {
  from {
    transform: rotate(0deg);
  }

  to {
    transform: rotate(359deg);
  }
}

html { /* Helps w/ rem, can still look good w/o just set rem/px as desired: https://stackoverflow.com/questions/59920538  */
  font-size: 62.5%;
}
```

## 🧡 Prerequisite CSS (NOT available at @feelinglovelynow/global-style)
Define how you would love your loading anchor to look
```css
.fln__circle-load { // gold load with transparent background
  border-color: #eac603 rgba(0, 0, 0, 0) rgba(0, 0, 0, 0);
}

.fln__circle-load { // thicker blue load with grey background
  border-width: 0.36rem;
  border-color: #2e96ff #ccc #ccc;
}
```

## ❤️ Examples
```svelte
<script lang="ts">
  import { LoadingAnchor } from '@feelinglovelynow/svelte-loading-anchor'
</script>

<LoadingAnchor href="/test" label="Test" css="example" />

<LoadingAnchor href="/" label="Home" widthRem={ 3 }>
  <div>Slot content</div>
</LoadingAnchor>
```


## 💟 Add custom styling
```scss
.fln__loading-anchor {

  &--is-loading {

  }

  &__label {

  }

  .fln__circle-load {

  }
}
```


## 🎁 All Our Packages
1. @feelinglovelynow/dgraph: [NPM](https://www.npmjs.com/package/@feelinglovelynow/dgraph) ⋅ [Github](https://github.com/feelinglovelynow/dgraph)
1. @feelinglovelynow/env-write: [NPM](https://www.npmjs.com/package/@feelinglovelynow/env-write) ⋅ [Github](https://github.com/feelinglovelynow/env-write)
1. @feelinglovelynow/get-form-entries: [NPM](https://www.npmjs.com/package/@feelinglovelynow/get-form-entries) ⋅ [Github](https://github.com/feelinglovelynow/get-form-entries)
1. @feelinglovelynow/get-relative-time: [NPM](https://www.npmjs.com/package/@feelinglovelynow/get-relative-time) ⋅ [Github](https://github.com/feelinglovelynow/get-relative-time)
1. @feelinglovelynow/global-style: [NPM](https://www.npmjs.com/package/@feelinglovelynow/global-style) ⋅ [Github](https://github.com/feelinglovelynow/global-style)
1. @feelinglovelynow/jwt: [NPM](https://www.npmjs.com/package/@feelinglovelynow/jwt) ⋅ [Github](https://github.com/feelinglovelynow/jwt)
1. @feelinglovelynow/loop-backwards: [NPM](https://www.npmjs.com/package/@feelinglovelynow/loop-backward) ⋅ [Github](https://github.com/feelinglovelynow/loop-backwards)
1. @feelinglovelynow/slug: [NPM](https://www.npmjs.com/package/@feelinglovelynow/slug) ⋅ [Github](https://github.com/feelinglovelynow/slug)
1. @feelinglovelynow/svelte-catch: [NPM](https://www.npmjs.com/package/@feelinglovelynow/svelte-catch) ⋅ [Github](https://github.com/feelinglovelynow/svelte-catch)
1. @feelinglovelynow/svelte-kv: [NPM](https://www.npmjs.com/package/@feelinglovelynow/svelte-kv) ⋅ [Github](https://github.com/feelinglovelynow/svelte-kv)
1. @feelinglovelynow/svelte-loading-anchor: [NPM](https://www.npmjs.com/package/@feelinglovelynow/svelte-loading-anchor) ⋅ [Github](https://github.com/feelinglovelynow/svelte-loading-anchor)
1. @feelinglovelynow/svelte-modal: [NPM](https://www.npmjs.com/package/@feelinglovelynow/svelte-modal) ⋅ [Github](https://github.com/feelinglovelynow/svelte-modal)
1. @feelinglovelynow/svelte-turnstile: [NPM](https://www.npmjs.com/package/@feelinglovelynow/svelte-turnstile) ⋅ [Github](https://github.com/feelinglovelynow/svelte-turnstile)
1. @feelinglovelynow/toast: [NPM](https://www.npmjs.com/package/@feelinglovelynow/toast) ⋅ [Github](https://github.com/feelinglovelynow/toast)
