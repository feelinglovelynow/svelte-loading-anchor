<script lang="ts">
  import { page } from '$app/stores'
  import { afterNavigate } from '$app/navigation'

  export let css: string = ''
  export let label: string = ''
  export let href: string = '/'
  export let loadWidth: 'standard' | 'big' | 'huge' = 'standard'

  let isLoading: boolean = false
  afterNavigate(() => isLoading = false)

  function onAnchorlick () {
    if (!$page.url.href.endsWith(href)) isLoading = true // if href is not the current url => show loading indicator
  }
</script>


<a { href } class="fln__loading-anchor { css } { isLoading ? 'fln__loading-anchor--is-loading' : '' } fln__loading-anchor--loading-size-{ loadWidth }" on:click={ onAnchorlick }>
  <slot/>
  <span class="fln__loading-anchor__label">{ label }</span>
  <svg role="img" class="fln__loading-anchor__loading-icon" viewBox="0 0 24 24"><title>Loading Icon</title><circle cx="12" cy="2" r="0" fill="currentColor"><animate attributeName="r" begin="0" calcMode="spline" dur="1s" keySplines="0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8" repeatCount="indefinite" values="0;2;0;0"/></circle><circle cx="12" cy="2" r="0" fill="currentColor" transform="rotate(45 12 12)"><animate attributeName="r" begin="0.125s" calcMode="spline" dur="1s" keySplines="0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8" repeatCount="indefinite" values="0;2;0;0"/></circle><circle cx="12" cy="2" r="0" fill="currentColor" transform="rotate(90 12 12)"><animate attributeName="r" begin="0.25s" calcMode="spline" dur="1s" keySplines="0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8" repeatCount="indefinite" values="0;2;0;0"/></circle><circle cx="12" cy="2" r="0" fill="currentColor" transform="rotate(135 12 12)"><animate attributeName="r" begin="0.375s" calcMode="spline" dur="1s" keySplines="0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8" repeatCount="indefinite" values="0;2;0;0"/></circle><circle cx="12" cy="2" r="0" fill="currentColor" transform="rotate(180 12 12)"><animate attributeName="r" begin="0.5s" calcMode="spline" dur="1s" keySplines="0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8" repeatCount="indefinite" values="0;2;0;0"/></circle><circle cx="12" cy="2" r="0" fill="currentColor" transform="rotate(225 12 12)"><animate attributeName="r" begin="0.625s" calcMode="spline" dur="1s" keySplines="0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8" repeatCount="indefinite" values="0;2;0;0"/></circle><circle cx="12" cy="2" r="0" fill="currentColor" transform="rotate(270 12 12)"><animate attributeName="r" begin="0.75s" calcMode="spline" dur="1s" keySplines="0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8" repeatCount="indefinite" values="0;2;0;0"/></circle><circle cx="12" cy="2" r="0" fill="currentColor" transform="rotate(315 12 12)"><animate attributeName="r" begin="0.875s" calcMode="spline" dur="1s" keySplines="0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8;0.2 0.2 0.4 0.8" repeatCount="indefinite" values="0;2;0;0"/></circle></svg>
</a>


<style lang="scss">
  .fln__loading-anchor {
    position: relative;
    display: inline-block;
    &.fln__loading-anchor--is-loading {
      cursor: default;
      pointer-events: none;

      :global(*) {
        opacity: 0;
      }

      .fln__loading-anchor__loading-icon,
      .fln__loading-anchor__loading-icon * {
        opacity: 1;
        z-index: 0;
      }
    }
    &.fln__loading-anchor--loading-size-standard {
      .fln__loading-anchor__loading-icon {
        width: 1.8rem;
        margin-top: -0.9rem;
        margin-left: -0.9rem;
      }
    }
    &.fln__loading-anchor--loading-size-big {
      .fln__loading-anchor__loading-icon {
        width: 2.7rem;
        margin-top: -1.35rem;
        margin-left: -1.35rem;
      }
    }
    &.fln__loading-anchor--loading-size-huge {
      .fln__loading-anchor__loading-icon {
        width: 3.6rem;
        margin-top: -1.8rem;
        margin-left: -1.8rem;
      }
    }

    :global(*)  {
      transition: all 0.3s;
    }

    &__loading-icon {
      position: absolute;
      z-index: -1;
      top: 50%;
      left: 50%;
      opacity: 0;
      transition: initial;
    }
  }
</style>
