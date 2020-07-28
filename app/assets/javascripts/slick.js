document.addEventListener("turbolinks:load"
, function () {
    $(function () {
      $('.anime').slick({
        dots: true,
        autoplay: true,
        autoplaySpeed: 1500,
      });
    });
  })