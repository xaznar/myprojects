const displayAlertOnButtonClick = () => {
  // TODO: Select the big green button
  const button = document.querySelector(".btn");
  // TODO: Bind the `click` event to the button
  button.addEventListener('click', (event) => {
    // TODO: On click, display `Thank you!` in a JavaScript alert!
    console.log(event);
    window.alert("Thank you!");
  });
};

displayAlertOnButtonClick(); // Do not remove!


// whatyouwanttochange.addEventLsitener('click',(event)=>{

//   writecodehere
// })
