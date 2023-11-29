import { SvelteComponent } from 'svelte'

export class LoadingAnchorType extends SvelteComponent<{
  css?: string
  label?: string
  href?: string
  widthRem?: number
}> {}
