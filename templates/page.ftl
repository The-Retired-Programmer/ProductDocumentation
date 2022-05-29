<#import "base.ftl" as parent>

<@layout>${content.body}</@layout>

<#macro layout>
    <@parent.layout>
        <#if (content.title)??>
            <div class="page-header">
                <h1>${content.title}</h1>
            </div>
        <#else></#if>
        <#nested>
    </@parent.layout>
</#macro>