<#macro kiipager current_page=1 pagesize=10 recordTotal=58 page_show=7>
<#if (recordTotal>0)>
<#assign pageTotal=(recordTotal/pagesize)>
<#assign pageTotal=pageTotal?ceiling>
<#assign firstno=1>
<#assign pos =(page_show/2)>
<#if ((current_page-pos)<1)>
<#assign firstno=1 />
<#elseif ((current_page+pos)>=pageTotal)>
    <#assign firstno=pageTotal-page_show+1 />
<#else>
    <#assign firstno=current_page-pos />
</#if>
<ul>
<#if (current_page>1)><li><a class="perv" href="<%=request.getContextPath()%>/admin/account/gamesettings/list&pageNo=${current_page-1}">Prev</a></li></#if>

<#if (pageTotal>=page_show)>

<#if (firstno>=2)><span>...</span></#if>

    <#list firstno..(page_show+firstno-1) as num>
        <#if num == current_page>
       <li><a class="current" href="javascript:;">${num}</a></li>
        <#else>
       <li> <a  href="<%=request.getContextPath()%>/admin/account/gamesettings/list&pageNo=${num}">${num}</a></li>
        </#if>
    </#list>

<#if ((firstno+page_show)<pageTotal)><span>...</span></#if>


<#else>
<#list 1..pageTotal as num>
<#if num == current_page>
<li><a class="current" href="javascript:;">${num}</a></li>
<#else>
<li><a  href="<%=request.getContextPath()%>/admin/account/gamesettings/list&page=${num}">${num}</a></li>
</#if>
</#list>
</#if>
 <#if (current_page<pageTotal)><li><a class="perv" href="<%=request.getContextPath()%>/admin/account/gamesettings/list&page=${current_page+1}">Next</a></#if></li>

</#if>
</#macro>