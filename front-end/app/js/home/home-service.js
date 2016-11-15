angular.module('app').factory('HomeService', ['$http','BaseService', function($http, BaseService) {
        return {
            getCountriesList: function() {
                var url = "http://iamrohit.in/lab/php_ajax_country_state_city_dropdown/api.php?type=getCountries";
                return BaseService.get(url);
            },
            getStatesList: function(countryId) {
                var url = 'http://iamrohit.in/lab/php_ajax_country_state_city_dropdown/api.php?type=getStates&countryId='+countryId;
                return BaseService.get(url);
            },

        };
    }]);
