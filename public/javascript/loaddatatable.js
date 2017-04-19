/**
 * http://usejsdoc.org/
 */


// work out which query needs to be used


// Inject datatable object and show on page
(function ($) 
	"use strict";
	var loadTables = {

$.('#FilesTable').Datatable( {
	 ajax: {
         url : 'api/getAllModpacks', 
         dataType : 'json'
     },
     columns: [
         { data: "name" },
         { data: "size" },
         { data: "modpack" },
         { data: 3 },
         { data: 4 },
         { data: 5 }
     ]
     
})
