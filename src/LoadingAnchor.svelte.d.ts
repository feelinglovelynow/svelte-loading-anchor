import { SvelteComponent } from 'svelte'

export class LoadingAnchor extends SvelteComponent<{
  css?: string
  label?: string
  href?: string
  widthRem?: number
}> {}
