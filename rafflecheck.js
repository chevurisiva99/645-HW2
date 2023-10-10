document.addEventListener("DOMContentLoaded", function () {
  // To check if the raffle contains only 10 comma seperated integers
  const form = document.getElementById("surveyForm");

  
  form.addEventListener("submit", function (event) {
    const inputValue = document.getElementById("numberData").value;

  
    const numbers = inputValue
      .split(",")
      .filter((num) => !isNaN(parseInt(num, 10)) && num.trim() !== "");

  
    if (numbers.length === 10) {
    } else {
      alert("Please enter exactly 10 comma-separated integers.");
    }
  });
});
