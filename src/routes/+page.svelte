<script>
	import '../app.postcss';
	import logo from '$lib/logo.svg';
	import SplineScene from '$lib/SplineScene.svelte';
</script>

<SplineScene />

<div class="min-h-screen w-full flex flex-col items-center justify-center p-6 z-50 gap-y-12">
	<div class="flex flex-col items-center gap-y-2">
		<img class="w-24" src={logo} />
		<span class="font-bold text-3xl">Rain Language</span>
	</div>
	<p class="max-w-lg text-center">
		Rain exists to make smart contracts accessible to <span class="text-[#923c38]">everyone</span>,
		grounded in our belief that accessibility is the difference between theoretical and practical
		decentralisation.
	</p>
	<div>
		<a class="link" href="https://github.com/rainlanguage">Github</a>
		<a class="link" href="https://docs.rainlang.xyz/core-concepts/introduction">Core concepts</a
		>
		<a class="link" href="https://docs.rainlang.xyz/orderbook/introduction">Orderbook</a>
		<a
			class="link"
			href="https://docs.rainprotocol.xyz/learning-rainlang/introduction/introduction-to-rainlang"
			>Learning Rainlang</a
		>
		<a class="link" href="https://docs.rainlang.xyz/blog">Blog</a>
	</div>
</div>

<style lang="postcss">
	.link {
		@apply px-4 py-2 rounded-md border border-black;
	}
</style>
