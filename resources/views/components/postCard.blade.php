@props(['post'])

<div class="bg-white shadow-lg">
<img src="{{asset($post->image)}}" alt="Blog Post" class=" w-full h-80 object-cover object-top"/>

<div class="px-4 py-8 ">
<h2 class="text-xl font-medium leading-5 mb-5">{{$post->title}}</h2>
<p class="mb-8">{{Str::words($post->body, 30)}}</p>
<div class="flex">
<a href="{{route('posts.show', $post)}}" class="text-white bg-gray-800 hover:bg-gray-900 focus:outline-none focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-gray-800 dark:hover:bg-gray-700 dark:focus:ring-gray-700 dark:border-gray-700">Read More</a>

{{$slot}}
</div>
</div>

</div>