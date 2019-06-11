<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<t:base>
    <div class="container-fluid">
        <div class="row">
            <nav class="col-md-2 d-none d-md-block bg-light sidebar  mt-3 mb-3">
                <h1 id="Titulo">Filtrar </h1>
                <div class="sidebar-sticky">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <form>
                                    <div class="form-group">
                                        <label for="cidade" id="Titulo_filtro">cidade: </label>
                                        <input type="text" class="form-control" id="cidade" placeholder="Digite a Cidade">
                                    </div>
                                    </form>
                                </li>
                            </ul>

                <button id="botao_edicao" type="submit" class="btn btn-light">Filtrar</button>
            </div>
        </nav>


        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4 container">
            <section>
                
                <h1 class="align-text-top mt-3 mb-3">Resultados da busca por: ${query}</h1>
               
                <c:forEach var="atividade" items="${atividades}">
                    <c:set var = "atividadeUrl" value = "/museu/${atividade.getMuseu().getCod()}" />
                    <div id="busca" class="row mb-2">
                                <div class="col-md-6">
                                    <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-2 position-relative">
                                        <div class="col p-4 d-flex flex-column position-static">

                                            <h3 id="nome_atividade" class="mb-0"><a href="${atividadeUrl}">${atividade.getNome()}</a></h3>
                                
                                            <h6 class="mb-0">Horario de Início:</h6>
                                            <p class="card-text mb-auto">${atividade.getHorario()}</p>
                                            
                                            <h6 class="mb-0">Preço: </h6>
                                            <p class="card-text mb-auto"> ${atividade.getPreco()} </p>

                                            <h6 class="mb-0">Disponível no Museu: </h6>
                                            <p class="card-text mb-auto"><a href="${atividadeUrl}"> ${atividade.getMuseu().getNome()}</a></p>
                                        </div>
                                    </div>
                                </div>
                    </div>
                </c:forEach>    
            </section>
        </main>
        </div>
    </div>
    </div>
</t:base>