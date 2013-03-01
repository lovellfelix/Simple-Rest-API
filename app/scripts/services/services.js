'use strict';

angular.service('Service', function ($resource) {
    return $resource('simple-rest-api/api/employees/:empId', {}, {
        update: {method:'PUT'}
    });
});
