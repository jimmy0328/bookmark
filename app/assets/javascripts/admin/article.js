$(document).on('ready page:load', function() {

    console.log(' ready ');


    $('.newBookmark').click(function() {


        alert('new');
    })



    $('.submit').click(function() {

        var val = $('[name=markType]').val();

        alert(val);

    });

});
