<script>
  import { page } from '$app/stores'
  import { afterNavigate } from '$app/navigation'

  export let css = ''
  export let label = ''
  export let href = '/'
  export let widthRem = 1.8

  $: marginRem = widthRem / 2

  let isLoading = false
  afterNavigate(() => isLoading = false)

  function onAnchorlick () {
    if (!$page.url.href.endsWith(href)) isLoading = true // if href is not the current url => show loading indicator
  }
</script>


<a { href } class="fln__loading-anchor { css } { isLoading ? 'fln__loading-anchor--is-loading' : '' }" on:click={ onAnchorlick }>
  <slot/>
  <span class="fln__loading-anchor__label">{ label }</span>
  <div class="fln__circle-load" style="width: { widthRem }rem; margin-top: -{ marginRem }rem; margin-left: -{ marginRem }rem;"></div>
</a>


<style>
  .fln__loading-anchor {
    position: relative;
    display: inline-block;
  }

  .fln__loading-anchor :global(*) {
    transition: all 0.3s;
  }

  .fln__loading-anchor.fln__loading-anchor--is-loading {
    cursor: default;
    pointer-events: none;
  }

  .fln__loading-anchor.fln__loading-anchor--is-loading :global(*) {
    opacity: 0;
  }

  .fln__loading-anchor.fln__loading-anchor--is-loading .fln__circle-load {
    opacity: 1;
    z-index: 0;
  }

  .fln__circle-load {
    position: absolute;
    z-index: -1;
    top: 50%;
    left: 50%;
    opacity: 0;
    transition: initial;
  }
</style>
