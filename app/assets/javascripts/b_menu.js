
document.addEventListener('DOMContentLoaded', function() {
  const menuToggle = document.getElementById('menu-toggle');
  const slideOutMenu = document.getElementById('slide-out-menu');

  menuToggle.addEventListener('click', function() {
      const width = window.innerWidth <= 768 ? '10%' : '20%';
      if (slideOutMenu.style.width === '0px' || slideOutMenu.style.width === '') {
          slideOutMenu.style.width = width;
      } else {
          slideOutMenu.style.width = '0';
      }
  });
});

