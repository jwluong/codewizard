function playMusic() {
  if (localStorage.getItem("music") === "false"){
    var promise = document.getElementById('audio_landing').play();
    if (promise !== undefined) {
      promise.then(_ => {
        // Autoplay started!
        localStorage.setItem("music", true)
      })
    }
  } else {
    localStorage.setItem("music", false)
    document.getElementById('audio_landing').pause()
  }
}
