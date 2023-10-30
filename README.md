# 🕉 @feelinglovelynow/svelte-loading-anchor


## 💎 Install
```bash
pnpm add @feelinglovelynow/svelte-loading-anchor
```


## 🙏 Description
* Sveltekit component that shows a loading icon when clicked and stops loading after the page navigate
* Will not show loading icon if link clicked is for the current page
* Supports `<slot />` to add anything in the anchor


## 💚 Properties
```ts
export let href: string = '/'
export let label: string = ''
export let css: string = '' // classes to add to anchor
export let loadWidth: 'standard' | 'big' | 'huge' = 'standard'
```


## 💛 Examples
```svelte
<script lang="ts">
  import { LoadingAnchor } from '@feelinglovelynow/svelte-loading-anchor'
</script>

<LoadingAnchor href="/test" label="Test" css="example" />

<LoadingAnchor href="/" label="Home" loadWidth="huge">
  <div>Slot content</div>
</LoadingAnchor>
```


## 🧡 Add custom styling
```scss
.fln__loading-anchor {

  &--is-loading {

  }

  &--loading-size-standard {

  }

  &--loading-size-big {

  }

  &--loading-size-huge {

  }

  &__label {

  }

  &__loading-icon {

  }
}
```


## 🎁 All our NPM Packages
* [@feelinglovelynow/env-write](https://github.com/feelinglovelynow/env-write)
* [@feelinglovelynow/get-form-entries](https://github.com/feelinglovelynow/get-form-entries)
* [@feelinglovelynow/get-relative-time](https://github.com/feelinglovelynow/get-relative-time)
* [@feelinglovelynow/global-style](https://github.com/feelinglovelynow/global-style)
* [@feelinglovelynow/jwt](https://github.com/feelinglovelynow/jwt)
* [@feelinglovelynow/loop-backwards](https://github.com/feelinglovelynow/loop-backwards)
* [@feelinglovelynow/slug](https://github.com/feelinglovelynow/slug)
* [@feelinglovelynow/svelte-loading-anchor](https://github.com/feelinglovelynow/svelte-loading-anchor)
* [@feelinglovelynow/svelte-modal](https://github.com/feelinglovelynow/svelte-modal)
* [@feelinglovelynow/svelte-turnstile](https://github.com/feelinglovelynow/svelte-turnstile)
* [@feelinglovelynow/toast](https://github.com/feelinglovelynow/toast)
