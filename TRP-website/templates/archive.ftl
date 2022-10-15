<#import "base.ftl" as parent>

<@layout/>

<#macro layout>
    <@parent.layout title="Archive">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Documents</h2>
                    <#if published_pages??>
                        <#list all_content as document>
                            <#switch document.type>
                            <#case "metatags">
                                 <#break>
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
                            <#case "bloglist">
                                <#break>
                            <#default>
                                <#if document.title != "About">
                                    <p><a href="${content.rootpath}${document.uri}">${document.title}</a> - ${document.date?string("dd MMMM yyyy")}</p>
                                </#if>
                            </#switch>
                        </#list>
                    </#if>
                </div>
                <div class="col-sm-6">
                    <h2>News</h2>
                    <#if published_posts??>
                        <#list published_posts as post>
                            <li>${post.date?string("dd MMMM yyyy")} - <a href="${content.rootpath}${post.uri}">${post.title}</a></li>
                        </#list>
                    </#if>
                </div>
            </div>
        </div>
    </@parent.layout>
</#macro>