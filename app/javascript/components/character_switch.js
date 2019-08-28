function char_switch() {
  var checkboxes = document.querySelectorAll(".form-check")
  // male checkbox
  checkboxes[0].addEventListener("click", function() {
    document.getElementById('male').classList.remove("hidden-char")
    document.getElementById('female').classList.add("hidden-char")
  });

  // female checkbox
  checkboxes[1].addEventListener("click", function() {
    document.getElementById('female').classList.remove("hidden-char")
    document.getElementById('male').classList.add("hidden-char")
  });
};

export {char_switch}
