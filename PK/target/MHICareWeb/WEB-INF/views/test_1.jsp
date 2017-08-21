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
            <td> ${inputData.studyTeamMemberName} </td>            
        </tr>			
        </table>
        

        <c:if test="${not empty inputData.studyTeamMemberName}">

        <table>
                <c:forEach var="mname" items="${inputData.studyTeamMemberName}">
                    <tr>
                        <td> ${mname} </td>                        
                    </tr>
                </c:forEach>
        </table>

	</c:if>
        
        
        <c:if test="${not empty inputData.patStudyEstimateSex}">

        <table>
                <c:forEach var="pse" items="${inputData.patStudyEstimateSex}">
                    <tr>
                        <td> ${pse} </td>                        
                    </tr>
                </c:forEach>
        </table>

	</c:if>
        
       <c:if test="${not empty inputData.patRegistryDemoInfo}">

        <table>
                <c:forEach var="prd" items="${inputData.patRegistryDemoInfo}">
                    <tr>
                        <td> ${prd} </td>                        
                    </tr>
                </c:forEach>
        </table>

	</c:if>

</body>
</html>