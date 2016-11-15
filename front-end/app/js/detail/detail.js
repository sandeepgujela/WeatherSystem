angular.module('detail', []).config(function($stateProvider) {
    $stateProvider.state('details', {
        url: '/detail/:city',
        templateUrl: 'detail/detail.tpl',
        controller: 'DetailCtrl',
        resolve: {
            weatherDetails: function(WeatherService, $stateParams) {
                return WeatherService.getWeatherByCity($stateParams.city);
            }

        }
    });

}).controller('DetailCtrl', function($scope, weatherDetails) {
    $scope.detailCtrl = {
        weatherData: weatherDetails.data 
    };

    console.log("weatherDetails", $scope.detailCtrl.weatherData);
});
