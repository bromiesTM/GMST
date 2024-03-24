<script lang="ts">
	import type { LayoutData } from './$types';
	import { page } from '$app/stores';

	export let data: LayoutData;
	const navigation: { title: string; href: string }[] = [
		{ title: 'Profile', href: '/my/settings/profile' },
		{ title: 'Account', href: '/my/settings/account' },
		{ title: 'Security', href: '/my/settings/security' }
	];
</script>

<div>
	<h3>Settings</h3>
</div>

<ul>
	{#each navigation as { title, href }}
		<li>
			<a {href} class={$page.url.pathname === href ? 'active' : ''}>{title}</a>
		</li>
	{/each}
</ul>
<slot />

<style>
	.active {
		font-weight: bold;
	}
</style>
