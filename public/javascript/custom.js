


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
            $.ajax({
                url : 'api/getAllRepositories', 
                dataType : 'json'
            }).done(function (obj) {
            var jsonobject = obj.data;
            console.log(jsonobject)
            var count = Object.keys(jsonobject).length;
            var container= document.getElementById('main-menu'); // reference to containing elment
            for(var i=0; i< count; i++){
            	var obj = jsonobject[i];
            	console.log(i)
            	var left_bar = '<li class="dropdown"><a href="#" id = '+ obj.repository_name +' class="dropdown-toggle" data-toggle="dropdown" >'+ obj.repository_name + '<span class="caret"></span></a></li>'
            
            	container.innerHTML+=left_bar;
            	var subcontainer = document.getElementById(obj.repository_name)
            	subcontainer.innerHTML += '<ul class="dropdown-menu" id = Submenu' + obj.repository_name +' role="menu">'
            	
            	//get Submenu (select modpacks in repository)
            	$.ajax({
            		url: 'api/getAllModpacksforRepository/' + obj.id,
            		dataType: 'json'
            	}).done(function (subobj) {
            		var jsonsubObject = subobj.data;
            		console.log(jsonsubObject)
                    var count = Object.keys(jsonsubObject).length;
            		var container = document.getElementById('Submenu' + obj.repository_name)
            		console.log(container)
            		for(var x = 0; x < count; x++){
            			var Subobj = jsonsubObject[x]
            			console.log(jsonsubObject[x])

            			var leftSubBar = '<li><a href="#">' + Subobj.name + '</a></li>'
            			console.log(leftSubBar)
            			
            			container.innerHTML += leftSubBar;
            		}	
        		});
        	}
        });
     
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
