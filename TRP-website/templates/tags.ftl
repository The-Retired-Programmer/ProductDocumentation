<#import "base.ftl" as parent>

<@layout/>

<#macro layout>
    <@parent.layout title=tag>
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Documents</h2>
                    <#if tagged_documents??>
                        <#list tagged_documents as document>
                            <#switch document.type>
                            <#case "metadata">
                                <p>${document.title}<br/>${document.version} - ${document.date?string("dd MMMM yyyy")}<br>
                                <#list document.documents?split(",") as doc >
                                    <#assign docinfo = doc?split("|") >
                                    <a href="${content.rootpath}documents/${document.folderpath!}${docinfo[0]}" target="_blank" rel="noopener noreferrer">[${docinfo[1]} version]</a>
                                </#list>
                                </p>
                                <#break>
                            <#case "post">
                                <#break>
                            <#default>
                                <p><a href="${content.rootpath}${document.uri}">${document.title}</a> - ${document.date?string("dd MMMM yyyy")}</p>
                            </#switch>
                        </#list>
                    </#if>
                </div>
                <div class="col-sm-6">
                    <#if tag_posts??>
                        <h2>News Items</h2>
                        <#list tag_posts as post>
                            <p><a href="${content.rootpath}${post.uri}">${post.title}</a> - ${post.date?string("dd MMMM yyyy")}</p>
                        </#list>
                    </#if>
                </div>
            </div>
        </div>
    </@parent.layout>
</#macro>