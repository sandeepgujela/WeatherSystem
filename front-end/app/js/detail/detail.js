angular.module('detail', []).config(function($stateProvider) {
    $stateProvider.state('details', {
        url: '/detail',
        templateUrl: 'detail/detail.tpl',
        controller: 'DetailCtrl'
    });

}).controller('DetailCtrl', function($scope) {
    $scope.homeCtrl = {};
});
