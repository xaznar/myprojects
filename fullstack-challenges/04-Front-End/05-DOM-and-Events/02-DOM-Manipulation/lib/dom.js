/* eslint-disable no-multiple-empty-lines */
/* eslint-disable prefer-const */

// INSTRUCTIONS - PLEASE READ!!
// Here are some challenges. Solve them from top to bottom

// **Each time** you complete a challenge, please commit and push!
// This is a good practise. Each time you make some progress in software
// development, you want to save a snapshot.


module.exports = function runChallenges(check) {

  // Ex 1. Read what's written in the email input
  //       Make the function getEmail() return it
  const getEmail = () => {
    const email = document.getElementById('email').value;
    return email;
    // TODO: return the email
  };


  // const getEmail = () => {
  //   // TODO: return the email
  //   const email = document.getElementById('email').value;
  //   return email;
  // };

  // /!\ DO NOT CHANGE THIS LINE - TEST PURPOSES
  const borisesEmail = getEmail();

  // Ex 2. Change the content of the email input by writing your own email address
  // created new constant for new email
  const email = document.getElementById('email');
  // provide the argument
  email.value = ("xeveraert@gmail.com");


  // Ex 3. Replace the email hint (next to the input) with 'This is my email now'
  //       The text should be emphasized using a <strong> tag
  const emailHint = document.getElementById("email-hint");
  console.log(emailHint.innerHTML);

  emailHint.innerHTML = "<strong>This is my email now</strong>";


  // Ex 4. Add the .blue CSS class to the th elements

  const blue = document.querySelectorAll('th');
  console.log(blue);

  blue.forEach((jh) => {
    jh.classList.add("blue");
  })
  // Ex 5. Count the number of table body rows there are
  //       Make the function teamCount() return it
  const teamCount = () => {
    // TODO: return the number of teams
    // create constant for table
    const table = document.querySelectorAll('tbody > tr');
    // create constant that counts  rows in table
    const count = table.length;
    return count;


  };

  // /!\ DO NOT CHANGE THIS LINE - TEST PURPOSES
  const teamCountBeforeAddition = teamCount();

  // Ex 6. Say there is a 15th team added to the table.
  //       Add a row at the bottom, this new team should have zero points.


  const extraTeam = document.querySelector('.table');
  extraTeam.insertAdjacentHTML('beforeend', '<tr><td>15</td><td>Team x </td><td>0</td></tr>');
  // return extraTeam;

  // Ex 7. Write some code to sum all points given to all teams
  //       Make the function summarizePoints() return it
  const summarizePoints = () => {
    // TODO: return the sum
    let sum = 0
    const table = document.querySelectorAll('tr td:last-child');
    table.forEach((td) => {
      sum = sum + Number.parseInt(td.innerText, 10);
    });
return sum;

  };


  // Ex 8. Change the background color of all `<th>` cells to #DDF4FF

    //choose the th cells

  const change = document.querySelectorAll('th');

  change.forEach((jh) => {
    jh.classList.add("background");
  });

  // Ex 9. Remove the "Email:" label from the DOM
const rid = document.querySelector('label');
rid.remove();













  // Checking exercise answers. DO NOT MODIFY THIS LINE
  check(borisesEmail, teamCountBeforeAddition, summarizePoints());
};
