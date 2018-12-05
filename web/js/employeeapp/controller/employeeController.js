/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


(function (app) {
    var employeeController = function ($scope, employeeService) {
        
        var empList = [];
        var init = function () {            
            employeeService.loadAllEmployee($scope);
            $scope.nextEmployee();
        };

        var index = 0;

        $scope.nextEmployee = function () {
            index++;
            if (employeeService.isOverflow(index))
            {             
            index--;
            }
            employeeService.getEmployee($scope, index);            
            /*employeeService.getEmployee($scope, index).then(function(result) {
                $scope.employee = result;
            });*/
            
        }

        $scope.previousEmployee = function () {
            index--;
            if (index < 0) {
                index = 0;
            }
            employeeService.getEmployee($scope, index);
            /*employeeService.getEmployee($scope, index).then(function(result) {
                $scope.employee = result;
            });*/
        }

        $scope.addEmployee = function () {
            index--;
            if (index < 0) {
                index = 0;
            }
            $scope.employee = employeeService.addEmployee(index);
        }

        $scope.deleteEmployee = function () {

            $scope.employee = employeeService.deleteEmployee(index);
            index--;
        }

        init();
    };

    //Instantiate or define controlller object - employeeController
    // Inject service - ["$scope", "employeeService"
    app.controller("employeeController", ["$scope", "employeeService", employeeController]);
}(angular.module("employeeApp")));