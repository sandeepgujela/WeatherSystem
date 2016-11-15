angular.module('app').factory('BaseService', ['$http', function($http) {
    return {
        get: function(url) {
            return $http.get(url);
        },
        post: function(url, data) {
            console.log('inside BaseService post');
            return $http.post(url, data);
        },
        put: function(url, data) {
            console.log('inside BaseService put');
            return $http.put(url, data);
        },
        delete: function(url) {
            console.log('inside BaseService delete');
            return $http.delete(url);
        }
    };
}]);
