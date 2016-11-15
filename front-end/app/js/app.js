angular.module('app', ['ui.router','templates','ngMaterial','home']).run(function($state) {
$state.go('home');
});


