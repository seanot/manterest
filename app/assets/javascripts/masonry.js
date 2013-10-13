$(function(){

  $('.image-link').magnificPopup({type:'image'});

  var $container = $('#masonry-container');

  $('.test-popup-link').magnificPopup({
    type: 'image',
    image: {
            verticalFit: true,
            titleSrc: function(item) {
                return item.el.attr('name') + ' &middot; <a class="image-source-link" href="'+item.el.attr('value')+'" target="_blank">image source</a>';
            }
        },
    callbacks: {
    elementParse: function(item) {
      // Function will fire for each target element
      // "item.el" is a target DOM element (if present)
      // "item.src" is a source that you may modify

      console.log(item); // Do whatever you want with "item" object
    }
  }
  });

  $container.imagesLoaded(function(){
    $container.masonry({
      itemSelector : '.masonryImage'
    });
  });

  $('.repin').on("click", function(e){
    console.log("clicked!");
    e.preventDefault();
    $.get("/repin",function(response){
      console.log('it worked!');
      $('#user').append(response);
    });
  });

});


