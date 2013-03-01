'use strict';

.controller('MainCtrl', function($scope, Service) {
   
    this.employee = Employee.get({wineId:this.params.employeeId});


   
  });
