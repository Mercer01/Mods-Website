


/*=============================================================
    Authour URI: www.binarytheme.com
    License: Commons Attribution 3.0

    http://creativecommons.org/licenses/by/3.0/

    100% To use For Personal And Commercial Use.
    IN EXCHANGE JUST GIVE US CREDITS AND TELL YOUR FRIENDS ABOUT US
   
    ========================================================  */


(function ($) {
    "use strict";
    var mainApp = {

        main_fun: function () {
           
            /*====================================
              LOAD APPROPRIATE MENU BAR
           ======================================*/
            $(window).bind("load resize", function () {
                if ($(this).width() < 768) {
                    $('div.sidebar-collapse').addClass('collapse')
                } else {
                    $('div.sidebar-collapse').removeClass('collapse')
                }
            });
            
            /*Populate Correct names*/
            $.getJson('localhost:8000/api/getAllModpacks')
            
            var count = Object.keys($.myObject).length;
            var container= document.getElementById('main-menu'); // reference to containing elm
            for(var i=0; i< count; i++){
            	var obj = jsonObj.myObject[i];
            	var left_bar = '<li><a href="index.html"><i class="fa fa-desktop "></i>'+ obj.name + '</a></li>'
            	container.innerHTML+=left_bar;
            }

          
     
        },

        initialization: function () {
            mainApp.main_fun();

        }

    }
    // Initializing ///

    $(document).ready(function () {
        mainApp.main_fun();
    });

}(jQuery));
