<#import "base.ftl" as parent>

<@layout/>

<#macro layout>
    <@parent.layout title=tag>
	<div class="page-header">
            <h2>Product: ${tag}</h2>
	</div>
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h3>Documents</h3>
                    <#list documents as document>
                        <#if (document.tags)??>
                            <#list document.tags as dtag>
                                <#if dtag == tag>
                                    <li><a href="${content.rootpath}${document.uri}">${document.title}</a> - ${document.date?string("dd MMMM yyyy")}</li>
                                <#else></#if>
                            </#list>
                        <#else></#if>
                    </#list>
                    <#list passthroughs as passthrough>
                        <#if (passthrough.tags)??>
                            <#list passthrough.tags as dtag>
                                <#if dtag == tag>
                                    <li><a href="${content.rootpath}${passthrough.uri}">${passthrough.title}</a> - ${passthrough.date?string("dd MMMM yyyy")}</li>
                                <#else></#if>
                            </#list>
                        <#else></#if>
                    </#list>
                    <#list pages as page>
                        <#if (page.tags)??>
                            <#list page.tags as dtag>
                                <#if dtag == tag>
                                    <li><a href="${content.rootpath}${page.uri}">${page.title}</a> - ${page.date?string("dd MMMM yyyy")}</li>
                                <#else></#if>
                            </#list>
                        <#else></#if>
                    </#list>
                </div>
                <div class="col-sm-6">
                    <h3>News Items</h3>
                    <#list tag_posts as post>
                        <li><a href="${content.rootpath}${post.uri}">${post.title}</a> - ${post.date?string("dd MMMM yyyy")}</li>
                    </#list>
                </div>
            </div>
        </div>
    </@parent.layout>
</#macro>