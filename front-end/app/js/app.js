angular.module('app', ['ui.router', 'templates', 'ngMaterial', 'home', 'detail', 'angular-loading-bar'])
.config(function($locationProvider) {
    $locationProvider.html5Mode(true)

}).run(function($state) {
    $state.go('home');
});
