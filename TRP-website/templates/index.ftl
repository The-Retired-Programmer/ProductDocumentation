<#import "base.ftl" as parent>

<@layout/>

<#macro layout>
    <@parent.layout title="News Items">
	<div class="page-header">
            <h1>News Items</h1>
	</div>
	<#list posts as post>
            <#if (post.status == "published")>
                <a href="${post.uri}"><h2>${post.title}</h2></a>
                <p>${post.body}</p>
                <div class="previousnextmenu">
                    <div class="button-icon-left" >
                        <#if (post.tags)??>
                            Product:
                            <#list post.tags as tag>
                                <a href="${content.rootpath}/tags/${tag}.html">${tag}</a>
                            </#list>
                        <#else>
                        </#if>
                    </div>
                    <div class="button-icon-right" >
                        ${post.date?string("dd MMMM yyyy")}
                    </div>
                </div>
                <hr/>
            </#if>
  	</#list>
	<p>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>
    </@parent.layout>
</#macro>