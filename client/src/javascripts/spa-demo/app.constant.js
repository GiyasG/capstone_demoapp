(function() {
    "use strict";


    //  Module
    angular
        .module("spa-demo")
        .constant("spa-demo.APP_CONFIG", {
          server_url: "localhost:3000",

          main_page_html: "spa-demo/pages/main.html",

          foos_html: "spa-demo/foos/foos.html"
        });

})();
