angular.module('app', ['ui.router', 'templates', 'ngMaterial', 'home', 'detail','angular-loading-bar']).run(function($state) {
    $state.go('home');
});
