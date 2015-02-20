<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'session.label', default: 'Session')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>

<div class="row-fluid">
    <div class="col-xs-12">
        <div>
            <h1><g:message
                    code="session.create"/> <small><g:message code="session.create.hint"/></small>
            </h1>
            <hr/>
        </div>

        <g:if test="${flash.message}">
            <div class="alert alert-info" role="status">${flash.message}</div>
        </g:if>

        <g:hasErrors bean="${sessionInstance}">
            <div class="alert-danger alert">
                <ul class="errors" role="alert">
                    <g:eachError bean="${sessionInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </div>
        </g:hasErrors>
    </div>
</div>

<div class="col-xs-12">

    <g:form url="[resource: sessionInstance, action: 'save']" class="form-horizontal">
        <div class="panel panel-default">
            <div class="panel-body">

                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>

            </div>

            <div class="panel-footer">

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">

                        <g:submitButton name="create" class="btn btn-success"
                                        value="${message(code: 'default.button.create.label', default: 'Create')}"/>

                    </div>
                </div>
            </div>

        </div>

    </g:form>

</div>
</body>
</html>
