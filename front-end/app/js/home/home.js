angular.module('home', []).config(function($stateProvider) {
    $stateProvider.state('home', {
        url: '/home',
        templateUrl: 'home/home.tpl',
        controller: 'HomeCtrl'
    });

}).controller('HomeCtrl', function($scope) {
    $scope.homeCtrl = {};
    
    
});
