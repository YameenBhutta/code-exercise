<x-app-layout>
    <div class="max-w-7xl mx-auto py-16 px-4 sm:px-6 lg:px-8">
        <a href="{{ route('dashboard') }}">← Back to dashboard </a>
        <form enctype="multipart/form-data" action="{{ route('posts.store') }}" method="post"
            class=" mt-6 px-6 py-4 bg-white shadow-md overflow-hidden sm:rounded-lg">
            @csrf

            <div class="mb-4">
                <label for="image" class="block mb-1 font-bold text-black">Upload Image</label>
                <input type="file" name="image"
                    class="w-full border-2 border-gray-200 p-3 rounded outline-none @error('image') border-red-600 @enderror" />
            </div>
            <div class="mb-4">
                <label for="title" class="block mb-1 font-bold text-black">Add Title</label>
                <input type="text" name="title"
                    class="w-full border-2 border-gray-200 p-3 rounded outline-none @error('title') border-red-600 @enderror" />
            </div>
            <div class="mb-4">
                <label for="body" class="block mb-1  font-bold text-black">Add Content</label>
                <textarea name="body"
                    class="w-full h-64 border-2 border-gray-200 p-3 rounded outline-none @error('body') border-red-600 @enderror"></textarea>
            </div>

            <button type="submit"
                class="bg-black hover:bg-slate-800 p-4 rounded text-white transition duration-300">Publish</button>
        </form>

</x-app-layout>
