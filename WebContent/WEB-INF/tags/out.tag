<%@ tag body-content="tagdependent" pageEncoding="UTF-8"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h3>doBody 저장</h3>
<jsp:doBody var="bodyText" />

${bodyText }
ab
<c:out value="${bodyText}" escapeXml="true"/>
