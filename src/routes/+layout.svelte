<script lang="ts">
	import type { LayoutData } from './$types';

	export let data: LayoutData;
</script>

{#if !data.user}
	<a href="/login">Login</a>
{:else}
	<div>
		<img src="https://picsum.photos/220" alt="User Avatar" />
	</div>
	<form action="/logout" method="post">
		<button type="submit">Logout</button>
	</form>
	<a href="/my/settings">Account Settings</a>
{/if}

<slot />
