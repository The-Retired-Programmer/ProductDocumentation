<#import "base.ftl" as parent>

<@layout/>

<#macro layout>
    <@parent.layout title="News Archive">
        <#if published_posts??>
            <#list published_posts as post>
                <li>${post.date?string("dd MMMM yyyy")} - <a href="${content.rootpath}${post.uri}">${post.title}</a></li>
            </#list>
        </#if>
    </@parent.layout>
</#macro>