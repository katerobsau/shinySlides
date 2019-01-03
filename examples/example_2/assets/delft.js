function createElement(tag0, class0) {
  let newEL = document.createElement(tag0);
  newEL.classList.add(class0);
  return newEL;
}

function addSlideLogoText(slideDOM) {
  let imgDOM = createElement("img");
  imgDOM.src = "assets/slide_logo.png";
  imgDOM.classList.add("slide-logo-text");
  slideDOM.appendChild(imgDOM);
}

function addSlideLogoFlame(slideDOM) {
  let imgDOM = createElement("img");
  imgDOM.src = "assets/slide_flame.jpg";
  imgDOM.classList.add("slide-logo-flame");
  slideDOM.appendChild(imgDOM);
}

function addColorBanners(slideDOM) {
  let newClasses = ["footer-banner"];
  newClasses.map(x => createElement("div", x))
            .forEach(x => slideDOM.appendChild(x));
}

function changeBackgroundColor(slideDOM) {
  slideDOM.style = "background-color: 'white';";
}

function addUnderline(h2DOM) {
  if (h2DOM.innerText !== "") {
    h2DOM.classList.add("header-underline");
  }
}

// Apply theme to slides =================================================
function addTheme(doc) {

  let allSlides = doc.querySelectorAll("slide:not(:first-child)");
  allSlides.forEach(addColorBanners);
  allSlides.forEach(changeBackgroundColor);
  allSlides.forEach(addSlideLogoText);
  allSlides.forEach(addSlideLogoFlame);

  let h2DOM = doc.querySelectorAll("h2");
  h2DOM.forEach(addUnderline);
}

addTheme(document);
