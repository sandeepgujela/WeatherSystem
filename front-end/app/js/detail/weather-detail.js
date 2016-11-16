angular.module('app').factory('WeatherService', ['$http', 'BaseService', function($http, BaseService) {
    return {

        getWeatherByCity: function(city) {
            var url = 'http://api.openweathermap.org/data/2.5/weather?q='+city+'&APPID=2c5c539103edb7012dd64189c6a2322a';
            return BaseService.get(url);
        },
        getWeatherForcaste: function(city,days) {
            var url = 'http://api.openweathermap.org/data/2.5/forecast?q='+city+'&APPID=2c5c539103edb7012dd64189c6a2322a';
            return BaseService.get(url);
        }

    };
}]);
