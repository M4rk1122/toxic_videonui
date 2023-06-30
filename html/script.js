const myVideo = document.getElementById("video1");
const sourceElement = document.getElementById("source1");
myVideo.volume = 0.1;

function Wclose() {
  fetch("https://videonui/close", {
    method: "POST",
  }).then()
}

function loadDifferentVideo(src){
    video1.getElementsByTagName('source')[0].setAttribute('src',src);
    myVideo.load();
    myVideo.play();
}

document.addEventListener('keyup', (e) => {
    if (e.code === "Escape" || e.code === "Backspace") { 
		fetch("https://videonui/close", {
			method: "POST",
		}).then()
	}; 
});

window.addEventListener("message", function (event) {
  const data = event.data;
  if (data.video !== undefined) {
    myVideo.pause();
	loadDifferentVideo(`./video/${data.video}`);
  }
  if (data.stop !== undefined) {
    myVideo.pause();
  }
  if (data.display !== undefined) {
    document.getElementsByClassName("window")[0].style.display = data.display
      ? "block"
      : "none";
  }
});
