<x-guest-layout>
<div class="p-16">
    <img src="{{asset($post->image)}}" alt="Blog Post" class="w-full object-cover"/>
    <div class=" py-8">
    <h2 class="text-3xl font-medium leading-10 mb-3">{{$post->title}}</h2>
    <p class="mb-8">{{$post->body}}</p>
    </div>
    </div>
    
</x-guest-layout>