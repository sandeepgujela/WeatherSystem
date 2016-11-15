angular.module('home', []).config(function($stateProvider) {
    $stateProvider.state('home', {
        url: '/home',
        templateUrl: 'home/home.tpl',
        controller: 'HomeCtrl',
        resolve: {
            countries: function(HomeService) {
                return HomeService.getCountriesList();
            }

        }
    });

}).controller('HomeCtrl', function($scope, HomeService, countries) {
    $scope.homeCtrl = {
        countries: countries.data.result
    };
    $scope.changeCountry = function(countryId) {
        $scope.homeCtrl.selectedState = {};
        getState(countryId + 1);

    };

    function getState(countryId) {
        HomeService.getStatesList(countryId).then(function(data) {
            $scope.homeCtrl.states = data.data.result;
        });


    }



});
