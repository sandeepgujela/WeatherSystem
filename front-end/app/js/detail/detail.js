angular.module('detail', []).config(function($stateProvider) {
    $stateProvider.state('details', {
        url: '/detail/:city',
        templateUrl: 'detail/detail.tpl',
        controller: 'DetailCtrl',
    });

}).controller('DetailCtrl', function($scope, $stateParams, WeatherService) {
    $scope.detailCtrl = {
        weatherForcaste: [],
        days: [1, 2, 3, 4, 5],
        selectedDays: 1

    };
    $scope.getWeatherForcaste = function() {

        WeatherService.getWeatherForcaste($stateParams.city, $scope.detailCtrl.selectedDays).success(function(response) {
            $scope.detailCtrl.location= response.city,
            $scope.detailCtrl.weatherForcaste = [];
            var forCasteTill = new Date().getDate();
            forCasteTill = parseInt(forCasteTill) + parseInt($scope.detailCtrl.selectedDays);

            for (i = 0; i < response.list.length; i++) {
                if (new Date(response.list[i].dt_txt).getDate() < forCasteTill) {
                    $scope.detailCtrl.weatherForcaste.push(response.list[i]);
                }
            }

        });
    };
    $scope.getWeatherForcaste();

});
