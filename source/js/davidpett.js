var currentState;

function setCurrentState(value) {
  currentState = value;
  if (currentState !== history.state) {
    window.history.pushState(currentState, currentState + " | david pett", "/" + currentState);
  }
}

$(document).ready(function () {
  $('nav a.nav-link').click(function (e) {
    e.stopPropagation();
    setCurrentState(this.getAttribute('data-state'));
    return false;
  });
});