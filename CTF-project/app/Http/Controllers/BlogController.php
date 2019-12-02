<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Exception;

class BlogController extends Controller
{
    public function index(Request $request)
    {
        $posts = Post::when($request->search, function($query) use($request) {
                        $search = $request->search;
                        
                        return $query->where('title', 'like', "%$search%")
                            ->orWhere('body', 'like', "%$search%");
                    })->with('tags', 'category', 'user')
                    ->withCount('comments')
                    ->published()
                    ->simplePaginate(5);

        return view('frontend.index', compact('posts'));
    }

    public function points(Request $request)
    {
        $user = User::where('points', $request->points);
    }

    public function post(Post $post)
    {
        $post = $post->load(['comments.user', 'tags', 'user', 'category']);

        return view('frontend.post', compact('post'));
    }

    public function comment(Request $request, Post $post)
    {
        $this->validate($request, ['body' => 'required']);

        $post->comments()->create([
            'body' => $request->body
        ]);
        flash()->overlay('Comment successfully created');

        return redirect("/posts/{$post->id}");
    }

    public function enter_flag(PostRequest $request)
    {

        $flags = Flag::where('flag', $request['flag'])->first();

        if ($post->flag == $request) {
            flash()->overlay('Congratulations some points are added to your account');
            $user->points = $user->points + $post->points_given;
        }
        else
        flash()->overlay('Flag doesn t match');

        return redirect('/admin/posts');
    }

    public function rules()
    {
        return [
            'flag'        => 'required',
            'user_id'     => 'required'
        ];
    }
}