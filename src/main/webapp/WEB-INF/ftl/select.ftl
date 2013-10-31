<#macro select id datas key="" text="" headKey="" headText="" defalutValue="">
   <select id="${id}" name="${id}">
   <#if headKey!="">  
   <option value="${headKey}">${headText}</option>  
    </#if> 
   <#list datas as data>
    
   <#if key!="">
   <#if defalutValue = data[key]?string>
   <option value="${key}" selected>${data[text]}</option>
   <#else>
   <option value="${key}">${data[text]}</option>
   </#if>
   <#else>
   
   <#if defalutValue=data>
   <option value="${data}" selected>${data}</option>
   <#else>
   <option value="${data}">${data}</option>
   </#if>
   </#if>
   </#list>
   </select>
</#macro>