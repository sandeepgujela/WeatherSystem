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

}).controller('DetailCtrl', function($scope, weatherDetails, $stateParams, WeatherService) {
    $scope.detailCtrl = {
        weatherData: weatherDetails.data,
        days: [1, 2, 3, 4, 5]

    };

    $scope.getWeatherForcaste = function() {

        WeatherService.getWeatherForcaste($stateParams.city, $scope.detailCtrl.selectedDays).success(function(response) {
            $scope.detailCtrl.weatherForcaste = [];
            var forCasteTill = new Date().getDate();
            var forCasteTill = parseInt(forCasteTill) + parseInt($scope.detailCtrl.selectedDays);
            

            for (i = 0; i < response.list.length; i++) {
                if (new Date(response.list[i].dt_txt).getDate() <= forCasteTill) {
                        $scope.detailCtrl.weatherForcaste.push(response.list[i]);
                }
            }

        });
    };
});
