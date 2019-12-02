@extends('layouts.app')

@section('content')

{!! Form::model($post, ['method' => 'PUT', 'url' => "/admin/posts/{$post}", 'class' => 'form-horizontal', 'role' => 'form']) !!}
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2>
                            {{ $post->title }} <small>by {{ $post->user->name }}</small>

                            <a href="{{ url('admin/posts') }}" class="btn btn-default pull-right">Go Back</a>
                        </h2>
                    </div>

                    <div class="panel-body">
                        <p>{{ $post->body }}</p>

                        <p><strong>Category: </strong>{{ $post->category->name }}</p>
                        <p><strong>Tags: </strong>{{ $post->tags->implode('name', ', ') }}</p>
                        <p><strong>Points Given: </strong>{{ $post->points_given }}</p>
                        <p><strong><?php echo Form::label('flag', 'Flag', ['class' => 'col-md-2 control-label']); ?>
                        <div class="col-md-8">
                        <?php
                            Route::post('admin/posts/$post->id', 'PostController@enter_flag');
                        ?>
                        <p>{{ Form::text('flag', 'Enter Flag Here', ['class' => 'form-control', 'required', 'autofocus']) }}</p>
                    </div>
                    <p>{{ Form::submit('Submit Flag', ['class' => 'btn btn-primary form-control']) }}</p>
                    {{ Form::close([]) }}
                </div>
            </div>
        </div>
    </div>
@endsection
