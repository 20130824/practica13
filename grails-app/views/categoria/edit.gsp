<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Editar Categoria</title>
    <asset:stylesheet src="application.css"/>

</head>

<body class="bg-dark">
<div class="container">
    <div class="card card-register mx-auto mt-5">
        <div class="card-header">Editar Categoria</div>
        <div class="card-body">

            <div class="nav" role="navigation">
                <ul>
                    <li><a  href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                    <li><g:link action="index"><g:message code="Listado Categorias" args="[entityName]" /></g:link></li>
                    <li><g:link action="create"><g:message code="Crear categoria" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <div id="edit-categoria" class="content scaffold-edit" role="main">
                  <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.categoria}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.categoria}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
                <g:form resource="${this.categoria}" method="PUT">
                    <g:hiddenField name="version" value="${this.categoria?.version}" />
                    <fieldset class="form">

                        <div class="form-group"></div>
                        <div class='fieldcontain required'>
                            <label for='nombre'>Nombre
                                <span class='required-indicator'>*</span>
                            </label><input type="text" class="form-control" name="nombre" value="${categoria.nombre}" required="" id="nombre" />
                        </div>
                    </fieldset>
                    <fieldset class="buttons">
                        <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                    </fieldset>
                </g:form>
            </div>

        </div>
    </div>
</div>
<asset:javascript src="application.js"/>
</body>

</html>
