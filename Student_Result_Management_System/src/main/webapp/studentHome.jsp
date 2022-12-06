<%@page import="Project.ConnectionProvider" %>
    <%@page import="java.sql.*" %>
        <%
try
{
	String rollNo=request.getParameter("rollNo");
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from student3 inner join result where student3.rollNo=result.rollNo and student3.rollNo='"+rollNo+"'");
	if(rs.next()){

%>

            <!-- <img src="logo.png" align="left" width="100" height="100"> -->
            <center><img src="logo.png" width="100" height="100">
                <img src="jis.png" align="right" width="100" height="100"></center>
            <!-- <a href="dgiOneView.html">Back</a> -->
            <hr class="new1">
            <style>
                a {
                    text-decoration: none;
                    color: #fff;
                }
                
                table {
                    width: 100%;
                    table-layout: fixed;
                }
                
                th {
                    padding: 20px 15px;
                    text-align: left;
                    font-weight: 500;
                    font-size: 14px;
                    color: #fff;
                    text-transform: uppercase;
                    border: 2px solid rgba(255, 255, 255, 0.3);
                }
                /* demo styles */
                
                @import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
                body {
                    background: -webkit-linear-gradient(left, #0000FF, #0047AB);
                    background: linear-gradient(to right, #1F51FF, #00008B);
                    font-family: 'Roboto', sans-serif;
                }
            </style>
            <!--for demo wrap-->
            <div class="tbl-header">
                <table cellpadding="0" cellspacing="0" border="0">
                    <thead>
                        <tr>
                            <th>Institution Name: JIS College of Engineering</th>
                            <th>Course:
                                <%=rs.getString(3) %>
                            </th>
                            <th>Branch:
                                <%=rs.getString(4) %>
                            </th>
                            <th>
                                <center>RollNo:
                                    <%=rs.getString(1) %>
                                </center>
                            </th>
                        </tr>
                    </thead>
                    <thead>
                        <tr>
                            <th>Student Name:
                                <%=rs.getString(2) %>
                            </th>
                            <th>Father Name:
                                <%=rs.getString(5) %>
                            </th>
                            <th>Gender:
                                <%=rs.getString(6) %>
                            </th>
                            <th>
                                <a title="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;">
                                    <center><img src="print.png"></center>
                                </a>
                            </th>
                        </tr>
                    </thead>
                </table>
            </div>
            <style>
                html {
                    font-family: arial;
                    font-size: 25px;
                }
                
                td {
                    border: 2px solid #726E6D;
                    padding: 15px;
                    color: rgb(255, 255, 255);
                    text-align: center;
                }
                
                thead {
                    font-weight: bold;
                    text-align: center;
                    background: #5f3535;
                    color: white;
                }
                
                table {
                    border-collapse: collapse;
                }
                
                .footer {
                    text-align: right;
                    font-weight: bold;
                    background: #002d6dc4;
                }
                
                tbody>tr:nth-child(even) {
                    background: rgb(46, 49, 93);
                }
                
                tbody>tr:nth-child(odd) {
                    background: rgb(36, 32, 93);
                }
                
                tfoot>tr {
                    background: #002d6dc4;
                }
                
                h6 {
                    color: #fff;
                }
            </style>

            <head>
                <hr class="new1">
            </head>

            <body>
                <table>
                    <thead>
                        <tr>
                            <td colspan="3">Course</td>
                            <td rowspan="2">Type</td>
                            <td rowspan="2">Full Marks</td>
                            <td rowspan="2">Passing Marks</td>
                            <td rowspan="2">Obtained Marks</td>

                        </tr>
                        <tr>
                            <td>Code </td>
                            <td colspan="2"> Name </td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>NAS101</td>
                            <td colspan="2">Engg. Physics-I </td>
                            <td>Theory</td>
                            <td>100</td>
                            <td> 30 </td>
                            <td>
                                <%=rs.getString(8) %>
                            </td>
                        </tr>
                        <tr>
                            <td>NAS102</td>
                            <td colspan="2">Engg. Chemistry</td>
                            <td>Theory</td>
                            <td>100</td>
                            <td>30</td>
                            <td>
                                <%=rs.getString(9) %>
                            </td>
                        </tr>
                        <tr>
                            <td>NAS103</td>
                            <td colspan="2">Engg. Mathematics-I </td>
                            <td>Theory</td>
                            <td>100</td>
                            <td> 30 </td>
                            <td>
                                <%=rs.getString(10) %>
                            </td>
                        </tr>
                        <tr>
                            <td>NEE101</td>
                            <td colspan="2">Basic Electrical Engg. </td>
                            <td>Theory</td>
                            <td>100</td>
                            <td> 30 </td>
                            <td>
                                <%=rs.getString(11) %>
                            </td>
                        </tr>
                        <tr>
                            <td>NEC101</td>
                            <td colspan="2">Electronic Engg.</td>
                            <td>Theory</td>
                            <td>100</td>
                            <td> 30 </td>
                            <td>
                                <%=rs.getString(12) %>
                            </td>
                        </tr>
                        <tr>
                            <td>NAS152</td>
                            <td colspan="2">Engg. Chemistry Lab</td>
                            <td>Practical</td>
                            <td>30</td>
                            <td>15</td>
                            <td>
                                <%=rs.getString(13) %>
                            </td>
                        </tr>
                        <tr>
                            <td>NAS151</td>
                            <td colspan="2">Engg. Physics Lab</td>
                            <td>Practical</td>
                            <td>30</td>
                            <td>15</td>
                            <td>
                                <%=rs.getString(14) %>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="4" class="footer">Total Marks</td>
                            <td>560</td>
                            <td>180</td>
                            <td>
                                <%int sum=rs.getInt(8)+rs.getInt(9)+rs.getInt(10)+rs.getInt(11)+rs.getInt(12)+rs.getInt(13)+rs.getInt(14); out.println(sum); %>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" class="footer">Percentage</td>
                            <td colspan="3">
                                <%out.println((sum*100)/560); %>
                            </td>
                        </tr>
                </table>
                <!-- <hr class="new1">
                <center>
                    <h6>Designed & Developed by Team DevSpace</h6>
                </center> -->
                <!-- <hr class="new1"> -->
                <center>
                    <h6>All Right Reserved @ Team DevSpace :: 2020-2024</h6>
                </center>
                <!-- <hr class="new1"> -->
            </body>

            <%
	}
else
{
response.sendRedirect("errorDgiOneView.html");
	}
}
catch(Exception e)
{}%>