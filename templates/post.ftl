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
        <div class="previousnextmenu">
            <div class="button-icon-left" >
                <#if (content.tags)??>
                    Product:
                    <#list content.tags as tag>
                        <a href="${content.rootpath}tags/${tag}.html">${tag}</a>
                    </#list>
                <#else>
                </#if>
            </div>
            <div class="button-icon-right" >
                ${content.date?string("dd MMMM yyyy")}
            </div>
        </div>
    </@parent.layout>
</#macro>