<x-app-layout>
    <x-slot name="header">
        <div class="flex justify-between items-center">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Dashboard') }}

            </h2>

            <a href="{{ route('create') }}"
                class="text-white bg-green-700 hover:bg-green-900 focus:outline-none focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">Create
                Post</a>

        </div>
    </x-slot>


    <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">

        <h2 class="text-2xl font-bold my-8">{{ Auth::user()->name }} > Latest posts</h2>

        <div class="grid lg:grid-cols-3 gap-4 md:grid-cols-2 sm:grid-cols-1 mb-14">
            @foreach ($posts as $post)
                <x-postCard :post="$post">
                    <form action="{{ route('posts.destroy', $post) }}" method="post">
                        @csrf
                        @method('DELETE')
                        <button
                            class="text-white bg-red-700 hover:bg-red-900 focus:outline-none focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">Delete</button>
                    </form>

                    <form action="{{ route('posts.edit', $post) }}" method="get">
                        @csrf
                        <button
                            class="text-white bg-green-700 hover:bg-green-900 focus:outline-none focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">Update</button>
                    </form>
                </x-postCard>
            @endforeach
        </div>
        {{ $posts->links() }}
    </div>

</x-app-layout>
