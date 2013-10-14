$(function() {
  initPage();
});
$(window).bind('page:change', function() {
  initPage();
});
function initPage() {

  var $container = $('#masonry-container');

  $container.imagesLoaded(function(){
    $container.masonry({
      itemSelector : '.masonryImage',
      isResizable: true,
      isAnimated: true
    });
  });


  $('.image-link').magnificPopup({type:'image'});

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
  // Do whatever you want with "item" object
      }
    }
    });

  $('.repin .link').on("click",function(e){
    e.preventDefault();
    var id = $(this).attr('id');
    $.post("/repin", {"id" : id }, function(response){
      $('.repin .link#'+id).hide();
      $('.'+id).append(response);
    });
  });

  $('.addadart').on("click",function(e){
    console.log("clicked");
    e.preventDefault();
    $.get('/addpin',function(response){
      $('.addadart').hide();
      $('.dartform').append(response);
    });
  });

  $('.addaboard').on("click",function(e){
    console.log("clicked");
    e.preventDefault();
    $.get('/addboard',function(response){
      $('.addaboard').hide();
      $('.boardform').append(response);
    });
  });



};


