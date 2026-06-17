function setActiveCircle(step) {
  document
    .querySelectorAll(".circle")
    .forEach((c) => c.classList.remove("active"));
  document.getElementById("c" + step).classList.add("active");
}

function changeStep(current, next) {
  document.getElementById("step" + current).classList.remove("active");
  document
    .getElementById(typeof next === "number" ? "step" + next : next)
    .classList.add("active");
}

function next1() {
  let name = document.getElementById("name").value;

  if (name === "") {
    document.getElementById("error1").innerText = "Name required";
    return;
  }

  sessionStorage.setItem("name", name);
  changeStep(1, 2);
  setActiveCircle(2);
}

function next2() {
  let age = document.getElementById("age").value;

  if (age === "") {
    document.getElementById("error2").innerText = "Age required";
    return;
  }

  sessionStorage.setItem("age", age);
  changeStep(2, 3);
  setActiveCircle(3);
}

function submitForm() {
  let city = document.getElementById("city").value;

  if (city === "") {
    document.getElementById("error3").innerText = "City required";
    return;
  }

  sessionStorage.setItem("city", city);

  let name = sessionStorage.getItem("name");
  let age = sessionStorage.getItem("age");
  let cityData = sessionStorage.getItem("city");

  changeStep(3, "result");

  document.getElementById("output").innerHTML =
    "<b>Name:</b> " +
    name +
    "<br>" +
    "<b>Age:</b> " +
    age +
    "<br>" +
    "<b>City:</b> " +
    cityData;
}
