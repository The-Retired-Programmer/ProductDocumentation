<#import "base.ftl" as parent>

<@layout/>

<#macro layout>
    <@parent.layout title="News Archive">
	<div class="page-header">
            <h1>News Archive</h1>
	</div>  
        <#list published_posts as post>
            <li>${post.date?string("dd MMMM yyyy")} - <a href="${content.rootpath}${post.uri}">${post.title}</a></li>
        </#list>
    </@parent.layout>
</#macro>