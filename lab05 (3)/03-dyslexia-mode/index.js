/* 
  See Smashing Magazine Tutorial:
  https://www.smashingmagazine.com/2021/11/dyslexia-friendly-mode-website/
*/

const initPage = () => {
  //see if button is pressed if so add class name
  const isPressed = window.localStorage.getItem("dyslexic") === 'true';
  if (isPressed){
    document.body.classList.add("dyslexia-mode");
  }
  //document.getElementById("#dyslexia-toggle").addEventListener('click', toggleDyslexiaMode)

  //toggle aria pressed
  const toggle = document.querySelector("#dyslexia-toggle")
  if(isPressed){
    toggle.setAttribute('aria-pressed','true');
    //document.getElementById("#dyslexia-toggle").setAttribute('aria-pressed','true')
  }
  toggle.addEventListener('click',toggleEventHandler);
};

const toggleDyslexiaMode = ev => {
  
  let pressed = ev.currentTarget.getAttribute('aria-pressed') ==='true';

  ev.currentTarget.setAttribute('aria-pressed', String(!pressed));

  document.body.classList.toggle("dyslexia-mode");

  window.localStorage.setItem('dyslexic', String(!pressed));

};


initPage();
