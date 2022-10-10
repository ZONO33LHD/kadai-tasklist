<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${error != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        ・<c:out value="${error}" /><br/>
    </div>
</c:if>
<label for="task_content">タスク</label><br />
<input type="text" name="content" id="task_content" value="${task.content}" />
<br /><br />


<input type="hidden" name="_token" value="${_token}" />
<button type="submit">登録</button>
