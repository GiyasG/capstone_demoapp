(function() {
    'use strict';


    //  Module
    angular
        .module('spa-demo.foos')
        .controller('spa-demo.foos.FoosController', FoosController);

    //  Controller Controller
    FoosController.$inject = ["spa-demo.foos.Foo"];
    function FoosController(Foo) {
        var vm  =  this;
        vm.foos;
        vm.foo;
        //  activate logic
        activate();
        ////////
        function activate() {
          newFoo();
        }

        function newFoo() {
          vm.foo = new Foo();
        }
        function handleError(response) {
          console.log(response);
        }
        function edit(object, index) {
        }
        function create() {
        }
        function update() {
        }
        function remove() {
        }
        function removeElement(elements, element) {
        }
    }
})();
