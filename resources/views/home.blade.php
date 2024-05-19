<x-guest-layout>

<div class="grid lg:grid-cols-3 gap-4 md:grid-cols-2 sm:grid-cols-1 py-16 px-5 lg:px-16 sm:px-10">
@foreach($posts as $post)
<x-postCard :post="$post"/>
@endforeach

</div>
<div class="pb-10">
{{$posts->links()}}
</div>
</x-guest-layout>