
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    
    </x-slot>

<div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
 <form action="{{route('posts.store')}}" method="post" class=" mt-6 px-6 py-4 bg-white shadow-md overflow-hidden sm:rounded-lg">
 @csrf
 <div class="mb-4">
 <label for="title" class="block mb-1 font-bold text-black">Add Title</label>
 <input type="text" name="title" class="w-full border-2 border-gray-200 p-3 rounded outline-none"/>
 </div>
 <div class="mb-4">
 <label for="body" class="block mb-1  font-bold text-black">Add Content</label>
 <textarea name="body" class="w-full h-64 border-2 border-gray-200 p-3 rounded outline-none"></textarea>
 </div>
 
 <button type="submit" class="bg-black hover:bg-slate-800 p-4 rounded text-white transition duration-300">Publish</button>
 </form>

 </div>

</x-app-layout>
