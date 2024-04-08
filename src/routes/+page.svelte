<script>
	import '../app.postcss';
	import logo from '$lib/logo.svg';
	import raindexlogo from '$lib/raindex-logo.svg';
</script>

<div class="min-h-screen w-full flex flex-col items-center justify-center p-6 z-50 gap-y-12">
	<div class="flex flex-col items-center gap-y-2">
		<img class="w-96" src={raindexlogo} />
	</div>
	<p class="max-w-lg text-center">
		Raindex allows anyone to write, deploy and manage token trading strategies, written in Rainlang,
		on any EVM network.
	</p>
	<div class="flex justify-center flex-wrap gap-2">
		<a
			class="link bg-blue-700 border-none text-white"
			href="https://docs.rainlang.xyz/raindex/download">Download app</a
		>
		<a class="link" href="https://docs.rainlang.xyz/raindex/example-strats/writing-strategies"
			>Learn Raindex</a
		>
	</div>
	<div
		class="h-[1px] bg-gradient-to-r from-transparent via-blue-500 to-transparent max-w-lg w-full my-4"
	/>
	<div class="flex flex-col items-center gap-y-2">
		<img class="w-96" src={logo} />
	</div>
	<p class="max-w-lg text-center">
		Rainlang is defi's native language. If you know your way around a spreadsheet, you can learn
		Rain.
	</p>
	<div class="flex justify-center flex-wrap gap-2">
		<a class="link" href="https://github.com/rainlanguage">Github</a>
		<a class="link" href="https://docs.rainlang.xyz/core-concepts/introduction">Core concepts</a>
		<a class="link" href="https://docs.rainlang.xyz/blog">Blog</a>
	</div>
</div>

<style lang="postcss">
	.link {
		@apply px-4 py-2 rounded-md border border-black;
	}
</style>
