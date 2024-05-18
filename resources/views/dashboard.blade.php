
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    
    </x-slot>

<div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
 <form enctype="multipart/form-data" action="{{route('posts.store')}}" method="post" class=" mt-6 px-6 py-4 bg-white shadow-md overflow-hidden sm:rounded-lg">
 @csrf
 
 <div class="mb-4">
     <label for="image" class="block mb-1 font-bold text-black">Upload Image</label>
     <input type="file" name="image" class="w-full border-2 border-gray-200 p-3 rounded outline-none @error('image') border-red-600 @enderror"/>
 </div>
 <div class="mb-4">
 <label for="title" class="block mb-1 font-bold text-black">Add Title</label>
<input type="text" name="title" class="w-full border-2 border-gray-200 p-3 rounded outline-none @error('title') border-red-600 @enderror"/>
 </div>
 <div class="mb-4">
 <label for="body" class="block mb-1  font-bold text-black">Add Content</label>
 <textarea name="body" class="w-full h-64 border-2 border-gray-200 p-3 rounded outline-none @error('body') border-red-600 @enderror"></textarea>
 </div>
 
 <button type="submit" class="bg-black hover:bg-slate-800 p-4 rounded text-white transition duration-300">Publish</button>
 </form>


 <h2 class="text-2xl font-bold mt-8">Your Latest posts</h2>
 

</div>

<div class="grid lg:grid-cols-3 gap-4 md:grid-cols-2 sm:grid-cols-1 p-16">
@foreach($posts as $post)
<x-postCard :post="$post">
<form action="{{route('posts.destroy', $post)}}" method="post">
@csrf
@method('DELETE')
<button class="text-white bg-red-700 hover:bg-red-900 focus:outline-none focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">Delete</button>
</form>

<form action="{{route('posts.edit', $post)}}" method="get">
@csrf
<button class="text-white bg-green-700 hover:bg-green-900 focus:outline-none focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">Update</button>
</form>
</x-postCard> 
@endforeach
</div>
{{$posts->links()}}


</x-app-layout>
