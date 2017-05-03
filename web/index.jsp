<%-- 
    Document   : index
    Created on : May 3, 2017, 3:25:43 PM
    Author     : edwin < edwinkun at gmail dot com >
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
            function getAjax(url, success) {
                var xhr = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
                xhr.open('GET', url);
                xhr.onreadystatechange = function () {
                    if (xhr.readyState > 3 && xhr.status == 200)
                        success(xhr.responseText);
                };
                xhr.send();
                return xhr;
            }
            
            function callAjax() {
                getAjax('/JWP06/ActionServlet', function(data){ 
                    var obj = JSON.parse(data);
                    document.getElementById("nama").innerHTML = obj.name;
                    document.getElementById("alamat").innerHTML = obj.alamat;
                });
            }
        </script>
    </head>
    <body>
        <div>API Call ke Servlet</div>
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <input type="button" onclick="callAjax();" value="call" />
                </td>
            </tr>
            <tr>
                <td>
                    isi value "Nama" hasil API Call adalah : <span id="nama"></span>
                </td>
            </tr>
            <tr>
                <td>
                    isi value "Alamat" hasil API Call adalah : <span id="alamat"></span>
                </td>
            </tr>
        </table>
    </body>
</html>
