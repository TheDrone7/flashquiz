<script lang="ts">
  import heroImg from '$lib/assets/cards.png';
  import Button from './button.svelte';
  export let title: string;
  export let description: string;
</script>

<div class="hero">
  <div class="hero_text">
    <h1>{title}</h1>
    <h3>{description}</h3>
    <a href="/register">
    <Button
      class="hero_button"
      text="Get started"
      iconRight="ic:baseline-rocket-launch"
      size="lg"
    />
    </a>
  </div>
  <div class="hero_image">
    <img src={heroImg} alt="Stacked cards" />
    <p>
      How many colors are there in the rainbow?
    </p>
  </div>
</div>

<style lang="postcss">
  .hero {
    display: flex;
    flex-direction: row;
    align-items: flex-start;
    justify-content: space-between;
    padding: var(--space-12) var(--space-16);
    color: var(--white);
    background: var(--backdrop-background-dark);
    box-shadow: var(--box-shadow-lg);
    backdrop-filter: blur(6px);
    height: 20rem;

    & .hero_text {
      max-width: 600px;
      padding-left: 0;
      text-align: center;

      & h1 {
        margin: 0;
        line-height: 1.5;
        font-size: var(--font-size-huge);
      }

      & h3 {
        margin: 0 0 var(--space-8) 0;
        padding: 0;
        line-height: var(--line-height-xl);
        font-size: var(--font-size-xl);
        font-weight: var(--font-weight-normal);
        color: var(--color-secondary-100);
      }

      @media only screen and (min-width: 768px) {
        padding-left: var(--space-16) !important;
        text-align: left
      }
    }

    & .hero_image {
      position: relative;
      height: 100%;
      margin-right: var(--space-16);

      & > img {
        width: 100%;
        height: 100%;
        object-fit: cover;
      }

      & > p {
        position: absolute;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding: var(--space-6) var(--space-14) var(--space-16) var(--space-12);
        color: var(--black);
        font-size: var(--font-size-lg);
        line-height: var(--line-height-lg);
        font-weight: var(--font-weight-medium);
        font-family: var(--font-family-monospace);
      }

      @media only screen and (max-width: 1376px) {
        display: none;
      }
    }
  }
</style>