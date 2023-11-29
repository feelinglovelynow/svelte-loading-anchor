import { SvelteComponent } from 'svelte'


export default class LoadingAnchor extends SvelteComponent<{
  css?: string
  label?: string
  href?: string
  widthRem?: number
}> {}
