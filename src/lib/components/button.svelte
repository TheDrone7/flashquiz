<script lang="ts">
	import Icon from '@iconify/svelte';
	export let iconLeft: string = 'arrow-left';
	export let text: string;
	export let iconRight: string = 'arrow-right';
	export let classes: string = '';
	export let variant: 'primary' | 'danger' | 'success' | 'warning' = 'primary';
	export let size: 'sm' | 'md' | 'lg' = 'md';

	export let onClick: (event) => void;

	$: classes = `button-${variant} button-${size} ${classes}`;
</script>

<button class={classes} on:click={onClick}>
	<span class="icon-left">
    <Icon icon={iconLeft} />
	</span>

	<span class="text">
		{text}
	</span>

	<span class="icon-right">
    <Icon icon={iconRight} />
	</span>
</button>

<style lang="postcss">
	button {
		display: flex;
		align-items: center;
		justify-content: center;
		border: 1px solid;
		border-radius: 0.25rem;
		line-height: 1;
		font-weight: 500;
		cursor: pointer;
		transition: all 0.2s ease;
		outline: none;
		color: var(--white);

		&.button-primary {
			background-color: var(--color-primary-500);
			border-color: var(--color-primary-700);

			&:hover {
				background-color: var(--color-primary-600);
				border-color: var(--color-primary-800);
			}

			&:active {
				background-color: var(--color-primary-700);
				border-color: var(--color-primary-900);
				box-shadow: var(--box-shadow-xl);
			}
		}

		&.button-sm {
			padding: var(--space-1) var(--space-2);
			font-size: var(--font-size-sm);
		}

		&.button-md {
			padding: var(--space-2) var(--space-4);
			font-size: var(--font-size-md);
		}

		&.button-lg {
			padding: var(--space-3) var(--space-6);
			font-size: var(--font-size-lg);
		}
	}

	.icon-left,
	.icon-right {
		display: flex;
		align-items: center;
		justify-content: center;
	}

	.icon-left {
		margin-right: 0.5rem;
	}

	.icon-right {
		margin-left: 0.5rem;
	}

	.text {
		display: flex;
		align-items: center;
		justify-content: center;
		text-decoration: none !important;
	}
</style>
