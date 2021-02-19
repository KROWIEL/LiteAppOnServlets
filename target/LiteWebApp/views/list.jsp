<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LiteWebApp on Servlets</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>

<body>
<nav class="navbar navbar-dark bg-dark">
    <a class="navbar-brand" href="/list">LiteWebApp ListPage</a>
</nav>

<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1 class="display-4">Users</h1>
        <p class="lead" align="center">
            <%
                List<String> names = (List<String>) request.getAttribute("userNames");

                if (names != null && !names.isEmpty()) {
                    out.println("<ul class=\"list-group\">");
                    for (String s : names) {
                        out.println("<li class=\"list-group-item\">" + s + "</li>");
                    }
                    out.println("</ul>");

                } else out.println("<div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\">\n" +
                        "<strong>There are no users yet!</strong>\n" +
                        "<button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n" +
                        "    <span onclick=\"this.parentElement.style.display='none'\"\n aria-hidden=\"true\">&times;</span>\n" +
                        "  </button>" +
                        "</div>");
            %>
        </p>
        <div align="center">
            <button type="button" class="btn btn-primary" onclick="location.href='/'">Back to main</button>
        </div>
    </div>
</div>

<footer class="text-muted">
    <div class="container">
        <p class="float-right">
            <a href="#">Back to top</a>
        </p>
        <p>LiteWebApp on Servlets example is © Bootstrap, but please download and customize it for yourself!</p>
        <p>New to Bootstrap? <a href="https://getbootstrap.com/">Visit the homepage</a> or read our <a
                href="/docs/4.5/getting-started/introduction/">getting started guide</a>.</p>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
</body>
</html>