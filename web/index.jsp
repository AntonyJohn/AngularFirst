<%-- 
    Document   : index
    Created on : 13 May, 2017, 7:20:28 PM
    Author     : Elcot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Real Estate</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="css/site.css"/>
</head>
<body ng-app="realestateApp" class="ng-scope">
    <div class="panel panel-default">
        <div class="panel-heading">
            Real Estate App
        </div>
        <div class="container" ng-controller="tenantsController" ngcloak>
            <h1>Tenants</h1>
            <div class="row">
                <div>
                    <button class="btn btn-primary" ng-click="previousTenant()">
                        Previous
                    </button>
                    <button class="btn btn-primary" ng-click="nextTenant()">
                        Next
                    </button>
                    <button class="btn btn-success" ng-click="addTenant()">
                        Add
                    </button>
                    <button class="btn btn-danger" ng-click="deleteTenant()">
                        Delete
                    </button>
                    <br style="clear:both">
                    <br>
                </div>
            </div>
            <div class="row">
                <div  ng-repeat="tenant in tenant">

                    <table border="0" class="pull-left">
                        <tr>
                            <td width="100">First Name: </td>
                            <td>
                                <input type="text" ng-model="tenant.FirstName" placeholder="Enter a name here">
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name: </td>
                            <td>
                                <input type="text" ng-model="tenant.LastName" placeholder="Enter a name here">
                            </td>
                        </tr>
                        <tr>
                            <td>Company: </td>
                            <td>
                                <input type="text" ng-model="tenant.Company" placeholder="Enter a name here">
                            </td>
                        </tr>
                        <tr>
                            <td>Job Title: </td>
                            <td>
                                <input type="text" ng-model="tenant.JobTitle" placeholder="Enter a name here">
                            </td>
                        </tr>
                        <tr>
                            <td>Business Phone: </td>
                            <td>
                                <input type="text" ng-model="tenant.BusinessPhone" placeholder="Enter a name here">
                            </td>
                        </tr>
                        <tr>
                            <td>Home Phone: </td>
                            <td>
                                <input type="text" ng-model="tenant.HomePhone" placeholder="Enter a name here">
                            </td>
                        </tr>
                        <tr>
                            <td>Mobile Phone: </td>
                            <td>
                                <input type="text" ng-model="tenant.MobilePhone" placeholder="Enter a name here">
                            </td>
                        </tr>
                        <tr>
                            <td>Street: </td>
                            <td>
                                <input type="text" ng-model="tenant.Street" placeholder="Enter a name here">
                            </td>
                        </tr>
                        <tr>
                            <td>City: </td>
                            <td>
                                <input type="text" ng-model="tenant.City" placeholder="Enter a name here">
                            </td>
                        </tr>
                        <tr>
                            <td>State: </td>
                            <td>
                                <input type="text" ng-model="tenant.State" placeholder="Enter a name here">
                            </td>
                        </tr>
                        <tr>
                            <td>Country: </td>
                            <td>
                                <input type="text" ng-model="tenant.Country" placeholder="Enter a name here">
                            </td>
                        </tr>
                        <tr>
                            <td>Email: </td>
                            <td>
                                <input type="text" ng-model="tenant.Email" placeholder="Enter a name here">
                            </td>
                        </tr>
                        <tr>
                            <td>WebPage: </td>
                            <td>
                                <input type="text" ng-model="tenant.WebPage" placeholder="Enter a name here">
                            </td>
                        </tr>
                        <tr>
                            <td>Notes: </td>
                            <td>
                                <input type="text" ng-model="tenant.Notes" placeholder="Enter a name here">
                            </td>
                        </tr>
                    </table>
                    <table border="0">                        
                        <tr>
                            <td >
                                <h1>Hello {{tenant.FirstName}} {{tenant.LastName}}!</h1>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

    
        <script type="text/javascript" src="js/scripts/jquery-1.9.1.js"></script>
        
    <!--<script src="js/scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="js/scripts/angular.js"></script>
    <script src="js/employeeapp/employeeApp.js"></script>
    <script src="js/employeeapp/controller/employeeController.js"></script>
    <script src="js/employeeapp/services/employeeService.js"></script>-->
</body>
</html>

