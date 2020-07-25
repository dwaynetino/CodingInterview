<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: Tinovimba Mawoyo
  Date: 25/7/2020
  Time: 13:30
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Coding interview</title>

    <!-- GETTING BOOTSTRAP AND jQuery-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>

<body>

<%

    //DEFINING DUMMY ARRAY
    //TO ADD MORE MENU ITEMS, JUST ADD MORE ELEMENTS TO THE ARRAY
  String[][][] menus = new String[][][]
          {
                  {{"menu1","menu1_link_url"}},
                  {{"menu3"}, {"submenu3_1", "submenu3_1_link_url"}, {"submenu3_2", "submenu3_2_link_url"}},
                  {{"menu2"},{"submenu2_1", "submenu2_1_link_url"}, {"submenu2_2", "submenu2_2_link_url"}, {"submenu2_3", "submenu2_3_link_url"}}
          };
%>

<!-- defining navbar -->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">

<% for (int i = 0; i < menus.length; i++){

    //IF MENU ITEM IS NOT DROPDOWN
    if (menus[i].length == 1){
        %><li ><a href="#<%= menus[i][0][1]%>"><%= menus[i][0][0]%></a></li>
   <% } %>


      <%
          //IF MENU ITEM IS DROPDOWN
          if (menus[i].length>1){
          %><li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><%= menus[i][0][0]%> <span class="caret"></span></a>

          <%} %> <ul class="dropdown-menu">
            <%

                //DISPLAYING SUBMENUS
          for (int j = 1  ; j < menus[i].length; j++){
              %>
                    <li><a href="#<%= menus[i][j][1] %>"><%= menus[i][j][0] %></a></li>


          <%} %>
        </ul>
        <%
}%>


      </li>

    </ul>
  </div>
</nav>

<div class="container">
  <h3>Navbar With Dropdown using <Bootst></Bootst>rap 4</h3>
  <p>Make sure internet connection is activated as bootstrap used is online</p>

    <p>The links to the menu items are defined with a # and the url e.g #submenu3_1_link_url , which can be viewed from the address bar</p>
</div>









</body>
</html>