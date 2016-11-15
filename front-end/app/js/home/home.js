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
    console.log("countries", $scope.homeCtrl.countries);
    $scope.changeCountry = function() {
        $scope.homeCtrl.selectedState="";
        $scope.homeCtrl.selectedCity="";

        console.log("changed the country",$scope.homeCtrl.selectedCountry);
    }
    function getState(country){
        return HomeService.getStatesList(country);
    }
});
