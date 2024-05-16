<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{env('APP_NAME')}}</title>
    @vite('resources/css/app.css')
</head>
<body>
<header class="py-8 bg-slate-800">
<div class="container mx-auto flex justify-between items-center px-6">

<h1 class="text-2xl font-semibold text-white">Code Exercise</h1>
<nav>
<a href="{{route('login')}}" class="text-white font-normal text-xl mr-4">Login</a>
<a href="{{route('register')}}" class="text-white font-normal text-xl">Sign up</a>
</nav>

</div>
</header>   
{{$slot}}
</body>
</html>