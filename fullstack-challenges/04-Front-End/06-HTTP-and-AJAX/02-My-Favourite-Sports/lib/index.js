// TODO: write your code here!

// When you hover over one of them, you see that the UI changes to suggest you to click

// you should toggle the active css class on the element
// (no need to write any css in this challenge)

// We should be able to select several sports (as if they were checkboxes)


// create constant (pic) & 1st grab element
const divs = document.querySelectorAll(".clickable");

divs.forEach((pic) => {
  pic.addEventListener("click", (event) => {
    pic.classList.toggle("active");
  });
});
// binding them to an addEventListener
