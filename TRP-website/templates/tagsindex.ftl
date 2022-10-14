<#import "base.ftl" as parent>

<@layout/>

<#macro layout>
    <@parent.layout title="Tags Index">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Tags</h2>
                    <#if tags??>
                        <#list tags as tag>
                            <p>${tag.name}: documents=${tagged_documents?size};</p>
                        </#list>
                    </#if>
                </div>
                <div class="col-sm-6">
                    Nothing here yet!
                </div>
            </div>
        </div>
    </@parent.layout>
</#macro>