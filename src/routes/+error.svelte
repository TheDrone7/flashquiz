<script lang="ts">
  import { page } from '$app/stores';
</script>

<div class="error_page">
  <img alt="{$page.status} {$page.error.message}" src="/{$page.status}.png" />
</div>

<style lang="postcss">
  .error_page {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    text-align: center;
    background: rgb(255,255,255);
    background: radial-gradient(ellipse, rgba(255,255,255,1) 0%, var(--background-dark) 100%);

    & img {
      max-width: 100%;
      font-size: 3rem;
      font-weight: 600;
      color: var(--black);
    }
  }
</style>