$(function(){

  var $container = $('#masonry-container');

  $container.imagesLoaded(function(){
    $container.masonry({
      itemSelector : '.masonryImage'
    });
  });
});


