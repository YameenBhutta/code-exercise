<?php

namespace App\Http\Controllers;


use App\Http\Requests\StorePostRequest;
use App\Http\Requests\UpdatePostRequest;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $posts= Post::latest()->paginate(6);
        // dd($posts);
   
        return view('/home', ['posts'=> $posts]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
    
        // validation
       $field = $request->validate([
        'image' => ['required'],
        'title' => ['required', 'max:150'],
        'body' => ['required'] 
        ]);
        
        if ($request->hasFile('image')) {
            $imageName = time() . '.' . $request->image->extension();
            $request->image->move(public_path('images'), $imageName);
            $field['image'] = 'images/' . $imageName;
        }
        // create
        Auth::user()->posts()->create($field);
        
         return redirect()->back()->with('success', 'Your Post was Created');
    }

    /**
     * Display the specified resource.
     */
    public function show(Post $post)
    {
        return view('posts.detail', ['post'=> $post]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Post $post)
    {
        return view('posts.edit', ['post'=> $post]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Post $post)
    {
        $field = $request->validate([
            'image' => ['required'],
            'title' => ['required', 'max:150'],
            'body' => ['required'] 
            ]);
            
            if ($request->hasFile('image')) {
                $imageName = time() . '.' . $request->image->extension();
                $request->image->move(public_path('images'), $imageName);
                $field['image'] = 'images/' . $imageName;
            }
            // Update
           $post->update($field);
            
             return back()->with('success', 'Your Post was Created');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Post $post)
    {
    
        $post->delete();
        
        return redirect('dashboard');
      
    }
}
