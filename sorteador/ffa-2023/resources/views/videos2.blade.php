<!DOCTYPE html>
<html>

<head>
    <title>Reproductor de Video</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            /* Centra horizontalmente en el eje X */
            align-items: center;
            /* Centra verticalmente en el eje Y */
            height: 80vh;
            /* Toma el 100% de la altura de la ventana gráfica (viewport height) */
        }

        #videoContainer {
            width: 100%;
            height: 100%;
            /* El 80% del ancho de la ventana gráfica */
        }


    </style>
</head>

<body>
    <div id="videoContainer">
        <video id="videoPlayer" width="1020" height="900" style="display: none;">
            <source src="{{ asset('storage/videos/loop.mp4') }}" type="video/mp4">
        </video>
        <video id="staticVideo" width="1020" height="900" style="display: none;">
            <source src="{{ asset('storage/videos/loop.mp4') }}" type="video/mp4">

        </video>
    </div>
    <script>
        var idVideo = 0;
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
                videoPlayer.style.opacity = 0;
                staticVideo.style.display = "block";
                staticVideo.style.opacity =
                1; // Cuando el video principal termina, muestra el video estático.
                staticVideo.play(); // Inicia la reproducción del video estático.
                intervalId = setInterval(logMessage, 8000);
            });
        });

        function logMessage() {
            if (idVideo === 5) {
                idVideo = 0;

            }
            idVideo = idVideo + 1;
            var newVideoURL = "{{ asset('storage/videos/') }}/" + idVideo + ".mp4";



            console.log(newVideoURL)
            videoPlayer.src = newVideoURL;
            videoPlayer.load();

            clearInterval(intervalId);
            staticVideo.pause();
            staticVideo.style.opacity = 0;
            staticVideo.style.display = "none";
            videoPlayer.style.opacity = 1;
            videoPlayer.style.display = "block";
            videoPlayer.play();
        }

        intervalId = setInterval(logMessage, 8000);
    </script>
</body>

</html>
