<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>
<template:main htmlTitle="Homepage">
    <div class="container">
        <h2>Employees</h2>
        <!--Search Form -->
        <form action="/employee" method="get" id="seachEmployeeForm" role="form" >
            <input type="hidden" id="searchAction" name="searchAction" value="searchByName"/>
            <div class="form-group col-xs-5">
                <input type="text" name="employeeName" id="employeeName" class="form-control" required="true"
                       placeholder="Type the Name or Last Name of the employee"/>
            </div>
            <button type="submit" class="btn btn-info">
                <span class="glyphicon glyphicon-search"></span> Search
            </button>
            <br />
            <br />
        </form>
    </div>
</template:main>