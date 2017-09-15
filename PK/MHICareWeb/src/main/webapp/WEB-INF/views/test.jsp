<!--%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	
        <br>	
        ${message}
        <br>       
        
        <c:if test="${not empty reqList}">

		<table>
			<c:forEach var="req" items="${reqList}">
                            <tr>
                                <td> ${req.piName} </td>
                                <td> ${req.piJhed} </td>
                                <td> ${req.piEmail} </td>
                            </tr>
			</c:forEach>
		</table>

	</c:if>
        <table>
			
        <tr>
            <td> ${inputData.piName} </td>            
        </tr>
        <tr>
            <td> ${inputData.piJhed} </td>            
        </tr>
        <tr>
            <td> ${inputData.piEmail} </td>            
        </tr>			
        </table>     

       
</body>
</html>