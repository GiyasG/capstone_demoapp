(function() {
    "use strict";
    //  Module
    angular
        .module("spa-demo.foos")
        .factory("spa-demo.foos.Foo", FooFactory);
    //  factory factory
    FooFactory.$inject =  ["$resource", "spa-demo.APP_CONFIG"];
    function FooFactory($resource, APP_CONFIG) {
      return $resource(APP_CONFIG.server_url + "/api/foos/:id",
        { id: '@id'},
        {
            update: {method: "PUT",
            transformRequest: buildNestedBody },
            save: {method: "POST",
            transformRequest: buildNestedBody }
        }
        );
      // nests the default payload below a "foo" element as required by default by Rails API resource
      function buildNestedBody(data) {
        return angular.toJson({foo: data});
      }
      // }
      //
      // Foo.prototype.method = function() {
      // };
      //   return service;
    }
})();
