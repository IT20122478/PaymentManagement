<%@page import="com.PaymentManagement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/PaymentManagement.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Payment Management</h1>

				<form id="formPaymentManagement" name="formPaymentManagement" method="post" action="PaymentManagement.jsp">


					Acc No: <input id="pAccNo" name="pAccNo" type="text"
						class="form-control form-control-sm"> 
						
						<br>Customer: <input id="pCus" name="pCus" type="text"
						class="form-control form-control-sm"> 
						
						<br> Date: <input id="pDate" name="pDate" type="date"
						class="form-control form-control-sm"> 
						
						<br> Amount: <input id="pAmount" name="pAmount" type="text"
						class="form-control form-control-sm"> 
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
					PaymentManagement projectObj = new PaymentManagement();
						out.print(projectObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
