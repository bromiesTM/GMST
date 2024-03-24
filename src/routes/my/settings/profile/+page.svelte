<script lang="ts">
	import type { PageData } from './$types';

	export let data: PageData;
	let previewSrc: string = 'https://picsum.photos/220';
	const showPreview = (event: { target: HTMLInputElement }) => {
		const target = event.target;
		const files = target.files;

		if (files && files.length > 0) {
			previewSrc = URL.createObjectURL(files[0]);
		}
	};
</script>

<form action="?/updateProfile" method="post">
	<h3>Update Profile</h3>
	<label for="avatar" class="avatar">
		<span>Profile Picture</span>
		<img src={previewSrc} alt="User Avatar" />
	</label>
	<input type="file" name="avatar" id="avatar" accept="image/*" hidden on:change={showPreview} />
</form>

<style>
	.avatar:hover {
		cursor: pointer;
	}
</style>
