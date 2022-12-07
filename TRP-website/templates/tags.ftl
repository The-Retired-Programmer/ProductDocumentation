<#import "base.ftl" as parent>

<@layout/>

<#macro layout>
    <@parent.layout title=tag>
        <#switch tag>
        <#case "Publishing Tools">
            <@tagset set="AsciiDoc,JBake"/>
        <#break>
        <#case "NetBeans Libraries">
            <@tagset set="Actions Support"/>
        <#break>
        <#case "Other NetBeans Tools">
            <@tagset set="PostgreSQL"/>
        <#break>
        <#case "Pico Products">
            <@tagset set="Pico Hat,Events,PTest"/>
        <#break>
        <#case "Retired Products">
            <@tagset set="Extexp,NBPCG"/>
        <#break>
        <#default>
            <@tagdetail tag=tag/>
        </#switch>
    </@parent.layout>
</#macro>

<#macro tagdetail tag="">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2>Documents</h2>
                <#if tagged_documents??>
                    <#list tagged_documents as document>
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
</#macro>

<#macro tagset set="">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2>Documents</h2>
                <#list set?split(",") as atag>
                    <#list tags as btag>
                        <#if btag.name == atag>
                            <h3>${btag.name}</h3>
                            <#list btag.tagged_documents as document>
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
                                <#default>
                                     <p><a href="${content.rootpath}${document.uri}">${document.title}</a> - ${document.date?string("dd MMMM yyyy")}</p>
                                </#switch>
                            </#list>
                        </#if>
                    </#list>
                </#list>
            </div>
            <div class="col-sm-6">
                <h2>News Items</h2>
                <#list set?split(",") as atag>
                    <#list tags as btag>
                        <#if btag.name == atag>
                            <h3>${btag.name}</h3>
                            <#list btag.tagged_posts as post>
                                <p><a href="${content.rootpath}${post.uri}">${post.title}</a> - ${post.date?string("dd MMMM yyyy")}</p>
                            </#list>
                        </#if>
                    </#list>
                </#list>
            </div>
        </div>
    </div>
</#macro>