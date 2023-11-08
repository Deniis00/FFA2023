<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class VideoController extends Controller
{
    public function showVideo($videoId) {
         // Suponiendo que Video sea el modelo para tu tabla de videos
        return view('reproductor', ['videoUrl' => $video->url]);
    }
}
