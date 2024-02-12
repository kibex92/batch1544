// TODO - Fetch an activity with the Bored API - Let's psuedocode!
const url = 'https://www.boredapi.com/api/activity/'
// 1. Select the H2
const header = document.getElementById("activity")
// 2. Select the button
const button = document.querySelector(".btn-warning")
const insertData = (data) => {
  // 5. Get the activity out of the API call
    const activity = data.activity
    // 6. Update H2 text to the activity
    header.innerText = activity
}
// 3. Add the event listener -> click
button.addEventListener("click", (event) => {
  // 4. Make the api call -> fetch function
  fetch(url)
  .then(response => response.json())
  .then((data) => {
    insertData(data)
  });
})



// // 1. Select button
// // 2. Add an event listener on click for button
// button.addEventListener("click", (event) => {
//   // 3. Create an array of activities
//   const activities = ["Walk the dog", "Become a barista", "Do the flashcards"]
//   // 4. Select a random activity
//   let index = Math.floor(Math.random() * activities.length)
//   const activity = activities[index]
//   console.log(activity);
//   // 5. Change the button text to the activity
//   event.currentTarget.innerText = activity
//   // button.setAttribute("disabled", "")
// })
// // 6. Disable the button