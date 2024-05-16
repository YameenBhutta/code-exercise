@props(['active'])

@php
$classes = ($active ?? false)
            ? 'text-2xl font-semibold text-white inline-flex items-center px-1 pt-1  text-gray-900 focus:outline-none focus:border-indigo-700 transition duration-150 ease-in-out'
            : 'text-2xl font-semibold text-white inline-flex items-center px-1 pt-1 text-gray-900 focus:outline-none focus:border-indigo-700 transition duration-150 ease-in-out';
@endphp

<a {{ $attributes->merge(['class' => $classes]) }}>
    {{ $slot }}
</a>
