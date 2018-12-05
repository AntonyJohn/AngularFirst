/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


(function (app) {

    var employee = [];    

    var employeeService = function ($http, $base64) {
        var employeeFactory = {};

        employeeFactory.loadAllEmployee = function ($scope) {
           var auth = $base64.encode("antony:123456"), headers = {"Authorization": "Basic " + auth};
            $http({
                method: "GET",
                url: "http://localhost:8084/SpringSecurityRestWS/employee/retrieveAllEmployee",
                headers: headers
            }).then(function mySucces(response) {
                employee = response.data;                  
                $scope.empList = response.data;
                //$scope.employee = employee[0];
                return true;
            }, function myError(response) {                
                alert('Error in loadAllEmployee');                
            }) 
            return true;
        };
        employeeFactory.getEmployee = function ($scope, index) {
            
            var returnEmployee = [];
            if (employeeFactory.isOverflow(index))
             {
             index = 0;
             }
            returnEmployee.push(employee[index]);
            $scope.employee = returnEmployee;
            //return returnEmployee;            
        };

        employeeFactory.isOverflow = function (index) {
            return (employee.length <= index)
        };

        employeeFactory.addEmployee = function (index) {
            var returnEmployee = [];
            var newIndex = employee.length + 1;
            employee.push(employeeFactory.newItem(newIndex));
            returnEmployee.push(employee[employee.length - 1]);
            return (returnEmployee)
        };

        employeeFactory.deleteEmployee = function (index) {
            var returnEmployee = [];

            employee.splice(index, 1);
            if (employee.length <= index)
            {
                index = employee.length - 1;
            }
            returnEmployee.push(employee[index]);
            return (returnEmployee)
        };

        employeeFactory.newItem = function (index) {

            var newItem = {
                id: index,
                firstName: "",
                lastName: "",
                company: "",
                jobTitle: "",
                businessPhone: "",
                homePhone: "",
                mobilePhone: "",
                faxNumber: "",
                street: "",
                sity: "",
                state: "",
                country: "",
                email: "",
                webPage: "",
                notes: ""
            }
            return newItem;
        }

        return employeeFactory;
    };
    app.factory("employeeService", employeeService);

}(angular.module("employeeApp")));