

      const navs = document.querySelectorAll('.tab');
      function tabActive() {
        this.classList.add('active');
      };

      navs.forEach(nav => nav.addEventListener('click', tabActive ));

