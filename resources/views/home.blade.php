<x-guest-layout>

<div class="grid lg:grid-cols-3 gap-4 md:grid-cols-2 sm:grid-cols-1 p-16">
@foreach($posts as $post)
<x-postCard :post="$post"/>
@endforeach

</div>
{{$posts->links()}}
</x-guest-layout>