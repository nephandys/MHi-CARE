<!--%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<h1>HELLO</h1>
	<h1>Message : </h1>
        <table>
			
        <tr>
            <td> ${inputData.piName} </td>            
        </tr>
        <tr>
            <td> ${inputData.piJhed} </td>            
        </tr>
        <tr>
            <td> ${inputData} </td>            
        </tr>			
        </table>     

       
</body>
</html>