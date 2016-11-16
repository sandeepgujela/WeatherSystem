angular.module('detail', []).config(function($stateProvider) {
    $stateProvider.state('details', {
        url: '/detail/:city',
        templateUrl: 'detail/detail.tpl',
        controller: 'DetailCtrl',
    });

}).controller('DetailCtrl', function($scope, $stateParams, WeatherService) {
    $scope.detailCtrl = {
        weatherForecast: [],
        days: [1, 2, 3, 4, 5],
        selectedDays: 1

    };
    $scope.getWeatherForecast = function() {

        WeatherService.getWeatherForecast($stateParams.city, $scope.detailCtrl.selectedDays).success(function(response) {
            $scope.detailCtrl.location= response.city;
            $scope.detailCtrl.weatherForecast = [];
            var forecastTill = new Date().getDate();
            forecastTill = parseInt(forecastTill) + parseInt($scope.detailCtrl.selectedDays);

            for (i = 0; i < response.list.length; i++) {
                if (new Date(response.list[i].dt_txt).getDate() < forecastTill) {
                    $scope.detailCtrl.weatherForecast.push(response.list[i]);
                }
            }

        });
    };
    $scope.getWeatherForecast();

});
