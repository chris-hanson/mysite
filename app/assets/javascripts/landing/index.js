(() => {
  const $nav = $(".js-nav");
  const $wind = $(window);

  $.scrollIt({
    activeClass: 'active',
    topOffset: -($(".js-nav").height()+50)
  });

  $wind.on('scroll', () => {
    $nav[`${$wind.scrollTop() ? 'add' : 'remove'}Class`]('-fixed');
  });

  $('.js-nav-links').click(() => {
    $('.js-nav-links-toggle').click();
  });

  $wind.trigger('scroll');

  if ($('.typed-header').length) {
    new Typed('.typed-header',  {
      strings: [
        "Chris Hanson",
        "Chris Hanson, code ninja",
        "Chris Hanson, UX wizard",
        "excessively caffeinated"
      ],
      typeSpeed: 40,
      backSpeed: 30,
      loop: true
    });
  }
})();