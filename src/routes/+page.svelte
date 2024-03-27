<script>
	import '../app.postcss';
	import logo from '$lib/logo.svg';
</script>

<div class="min-h-screen w-full flex flex-col items-center justify-center p-6 z-50 gap-y-12">
	<div class="flex flex-col items-center gap-y-2">
		<img class="w-96" src={logo} />
	</div>
	<p class="max-w-lg text-center">
		Rainlang is a smart contract language designed to be easier to read and write. If you can write
		an Excel formula, you can learn to write rainlang.
	</p>
	<div class="flex justify-center flex-wrap gap-2">
		<a class="link" href="https://github.com/rainlanguage">Github</a>
		<a class="link" href="https://docs.rainlang.xyz/core-concepts/introduction">Core concepts</a>
		<a class="link" href="https://docs.rainlang.xyz/orderbook/introduction">Raindex</a>
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
