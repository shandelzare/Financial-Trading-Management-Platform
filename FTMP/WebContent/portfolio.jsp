<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Portfolio</title>
</head>
<body>
	<div id = "header">
		<div class = "title">
			<h1 class = "title">
			<% String str = request.getParameter("title"); 
			   if (str == null) {
			       str = "";
			   }
			%> 
			<%=str %></h1>
		</div>
		<div class = "right">
			<a href = "login.jsp">Logout</a>
		</div>
	</div>
	<hr>
	<div id = "content">
		<div class = "left-column">
			Portfolios
			<ul>
				<li><a href = "portfolio.jsp?title=My Portfolio">My Portfolio</a>
			</ul>
		</div>
		<div class = "main">
			<div class = "form">
				<form action = "portfolio.jsp" name = "record" method = "POST">
				<div>
					<table>
						<tr>
							<th>Type</th>
							<th>Symbol</th>
							<th>Shares</th>
							<th>Price</th>
							<th>Commission</th>
							<th>Note</th>
						</tr>
						<tr>
							<td>
								<select>
								<option value = "buy">Buy</option>
								<option value = "sell">Sell</option>
								</select> 
							</td>
							<td>
								<input type = "text" name = "Symbol">
							</td>
							<td>
								<input type = "text" name = "Shares">
							</td>
							<td>
								<input type = "text" name = "Price">
							</td>
							<td>
								<input type = "text" name = "Commission">
							</td>
							<td>
								<input type = "text" name = "Note">
							</td>
						</tr>
					</table>
				</div>
				<div class = "section">
					<input type = "checkbox" name = "isDeduct">Deduct from cash
				</div>
				<div class = "section">
					<input type = "submit" name = "add_portfolio" value = "Add to portfolio">
					<input type = "submit" name = "cancel_portfolio" value = "Cancel">
				</div>
				</form>
			</div>
			<hr>
			<div class = "form">
				<form action = "portfolio.jsp" name = "record" method = "POST">
				<div>
					<table>
						<tr>
							<th>Type</th>
							<th>Date</th>
							<th>Amount</th>
							<th>Note</th>
						</tr>
						<tr>
							<td>
								<select>
								<option value = "Deposit">Deposit</option>
								<option value = "Withdraw">Withdraw</option>
								</select> 
							</td>
							<td>
								<input type = "text" name = "Date">
							</td>
							<td>
								<input type = "text" name = "Amount">
							</td>
							<td>
								<input type = "text" name = "Note">
							</td>
						</tr>
					</table>
				</div>
				<div class = "section">
					<input type = "submit" name = "add_portfolio" value = "Add to portfolio">
					<input type = "submit" name = "cancel_portfolio" value = "Cancel">
				</div>
				</form>
			</div>
			<hr>
			<div class = "form">
				<form>
					<table >
					<tr>
						<th>Name</th>
						<th>Symbol</th>
						<th>Last Price</th>
						<th>Change</th>
						<th>Shares</th>
						<th>Cost bias</th>
						<th>Mkt Value</th>
						<th>Gain</th>
						<th>Gain%</th>
						<th>Daily Gain</th>
						<th>Overall Return</th>
					</tr>
				</table>
			</form>			
			</div>
		</div>
	</div>
	<div id = "footer">
		<center>
			
		</center>
	</div>
</body>
</html>