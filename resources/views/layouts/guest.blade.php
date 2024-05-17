<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Code Exercise') }}</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body class="font-sans text-gray-900 antialiased">
    <header class="py-8 bg-slate-800">
<div class="container mx-auto flex justify-between items-center px-6">

<h1 class="text-2xl font-semibold text-white"><a href="/">Code Exercise</a></h1>
<nav>
<a href="{{route('login')}}" class="text-white font-normal text-xl mr-4">Login</a>
<a href="{{route('register')}}" class="text-white font-normal text-xl">Sign up</a>
</nav>

</div>
</header>  
<div class="bg-gray-100">
<div class="container mx-auto ">
                {{ $slot }}
           </div> 
        
           </div>
    </body>
</html>
