angular.module('app', ['ui.router', 'templates', 'ngMaterial', 'home', 'detail']).run(function($state) {
    $state.go('home');
});
