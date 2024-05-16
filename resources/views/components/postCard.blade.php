@props(['posts'])
@if(isset($posts) && count($posts) > 0)
<div class="grid grid-cols-3 gap-4 ">
@foreach($posts as $postItems)
<div class=" shadow-lg">
<img src="{{asset($postItems->image)}}" alt="Blog Post" class=" w-full"/>
<div class="px-4 py-8">
<h2 class="text-xl font-medium leading-10">{{$postItems-> title}}</h2>
<p class="mb-8">{{Str::words($postItems->body, 30)}}</p>
<a href="#" class="text-white bg-gray-800 hover:bg-gray-900 focus:outline-none focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-gray-800 dark:hover:bg-gray-700 dark:focus:ring-gray-700 dark:border-gray-700">Read More</a>
</div>
</div>
@endforeach
</div>
@else
    <p>No posts available.</p>
@endif