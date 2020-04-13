const playMusic = () => {
  if (localStorage.getItem("music") === null) {
    localStorage.setItem("music", false)
  }

  const musicIcon = document.getElementById('musicIcon')
  const musicStatus = localStorage.getItem("music") === "true" ? true : false;

  if (musicStatus === true) {
    document.getElementById('audio').play();

    musicIcon.classList.remove("fa-volume-mute");
    musicIcon.classList.add("fa-volume-up");
  } else {
    document.getElementById('audio').pause();

    musicIcon.classList.remove("fa-volume-up");
    musicIcon.classList.add("fa-volume-mute");
  }
}

const toggleMusic = () => {
  let musicStatus = localStorage.getItem("music") === "true" ? true : false;

  localStorage.setItem("music", !musicStatus);
  playMusic();
}

window.onload = playMusic();
