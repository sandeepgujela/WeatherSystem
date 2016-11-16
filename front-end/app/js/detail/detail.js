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

}).controller('DetailCtrl', function($scope, weatherDetails,$stateParams,WeatherService) {
    $scope.detailCtrl = {
        weatherData: weatherDetails.data,
        days:[1,2,3,4,5]

    };

    $scope.getWeatherForcaste=function(){
        // console.log("getting weather forcaste",$scope.detailCtrl.selectedDays,$stateParams.city);
        WeatherService.getWeatherForcaste($stateParams.city,$scope.detailCtrl.selectedDays).success(function(response){
            $scope.detailCtrl.weatherForcaste=response.list;
            console.log("forcaste list",$scope.detailCtrl.weatherForcaste);

        });
    };
});
