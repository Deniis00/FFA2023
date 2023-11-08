<!DOCTYPE html>
<html>

<head>
    <title>Reproductor de Video</title>
    
</head>

<body>
    <video id="videoPlayer" width="640" height="360"  style="display: none;">
        <source src="{{ asset('storage/videos/video.mp4') }}" type="video/mp4">
        Tu navegador no soporta la reproducción de video.
    </video>
    <video id="staticVideo" width="640" height="360" style="display: none;">
        <source src="{{ asset('storage/videos/loop.mp4') }}" type="video/mp4">
        Tu navegador no soporta la reproducción de video.
    </video>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var videoPlayer = document.getElementById("videoPlayer");
            var staticVideo = document.getElementById("staticVideo");

            function startPlayback() {
                staticVideo.style.display = "block";
                staticVideo.play(); // Inicia la reproducción del video estático.
            }

            function toggleVideos() {
                if (staticVideo.style.display === "block") {
                    staticVideo.style.display = "none";
                    videoPlayer.style.display = "block";
                    videoPlayer.play(); // Inicia la reproducción del video principal.
                } else {
                    videoPlayer.style.display = "none";
                    staticVideo.style.display = "block";
                    staticVideo.play(); // Inicia la reproducción del video estático.
                }
            }

            document.addEventListener("keydown", function(event) {
                if (event.ctrlKey && event.key === "1") {
                    startPlayback(); // Inicia la reproducción del video estático con Control + 1.
                }
            });



            staticVideo.addEventListener("ended", function() {
                // Cuando el video estático termina, lo reiniciamos para que se reproduzca de nuevo.
                staticVideo.currentTime = 0; // Reiniciar el tiempo de reproducción a 0.
                staticVideo.play();

            });

            videoPlayer.addEventListener("ended", function() {
                videoPlayer.style.display = "none";
                staticVideo.style.display = "block"; // Cuando el video principal termina, muestra el video estático.
                staticVideo.play(); // Inicia la reproducción del video estático.
                intervalId =  setInterval(logMessage, 8000);
            });
        });

        function logMessage() {
            clearInterval(intervalId);
            staticVideo.pause();
            staticVideo.style.display = "none";
            videoPlayer.style.display = "block";
            videoPlayer.play();
        }

        intervalId =  setInterval(logMessage, 8000);
    </script>
</body>

</html>
