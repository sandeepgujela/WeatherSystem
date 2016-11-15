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

}).controller('HomeCtrl', function($scope,$state, HomeService, countries) {
    $scope.homeCtrl = {
        countries: countries.data.result
    };
    $scope.changeCountry = function(countryId) {
        $scope.homeCtrl.selectedState = {};
        getState(countryId + 1);

    };
    $scope.changeState = function(stateId) {
        $scope.homeCtrl.selectedCity = {};
        getCity(parseInt(stateId));
    };

    $scope.showWeather = function() {
        $state.go('details',{city:$scope.homeCtrl.selectedCity});
    }

    function getState(countryId) {
        HomeService.getStatesList(countryId).then(function(data) {
            $scope.homeCtrl.states = data.data.result;
            console.log("get state list", $scope.homeCtrl.states);

        });
    }

    function getCity(StateId) {
        HomeService.getCitiesList(StateId).then(function(data) {
            $scope.homeCtrl.cities = data.data.result;
        });
    }




});
