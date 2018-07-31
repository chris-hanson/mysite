(() => {
  const $nav = $(".main-nav");
  const $wind = $(window);

  $.scrollIt({
    activeClass: 'active',
    topOffset: -($(".main-nav").height()+50)
  });

  $wind.on('scroll', () => {
    $nav[`${$wind.scrollTop() ? 'add' : 'remove'}Class`]('-fixed');
  });

  $wind.trigger('scroll');

  new Typed(".typed-header",  {
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

  sortable('.js-sortable');
})();