<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script language="javascript">
        function forceHttpsOnSubmit(objForm) {
            objForm.action = objForm.action.replace("http:", "https:").replace("localhost:8080","localhost:8443");
        }
    </script>
</head>
<body>
<form method="post" action="/j_spring_security_check" onsubmit="forceHttpsOnSubmit(this)">
        <div id="passwordLoginOption" class="form">
            <div class="row">
                <div class="label left">
                    <label for="j_username">login:</label>
                </div>
                <div class="right">
                    <div class="textWrapper">
                        <input type="text" name="j_username"/>
                    </div>
                </div>
                <div class="cl"></div>
            </div>
            <div class="row">
                <div class="label left">
                    <label for="j_password">password:</label>
                </div>
                <div class="right">
                    <div class="textWrapper">
                        <input type="password" name="j_password"/>
                    </div>
                </div>
                <div class="cl"></div>
            </div>
            <div class="row">
                <div class="right">
                    <label class="forCheckbox" for='_spring_security_remember_me'>
                        Remember me:
                        <input type='checkbox' name='_spring_security_remember_me'/>
                    </label>
                </div>
                <div class="cl"></div>
            </div>
            <div class="buttons">
                <input type="submit" value="Login"/>
            </div>
        </div>
    </form>
</body>
</html>