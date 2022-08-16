<#import "base.ftl" as parent>

<@layout>${content.body}</@layout>
<#macro layout>
    <@parent.layout>
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <#if (content.sectionlistname)??>
                            <#list sectionlists as sectionlist>
                                <#if sectionlist.document == content.sectionlistname>
                                    ${sectionlist.body}
                                <#else></#if>
                            </#list>
                    <#else></#if>
                    <p><em>${content.date?string("dd MMMM yyyy")}</em></p>
                </div>
                <div class="col-sm-8">
                    <div class="previousnextmenu">
                        <div class="button-icon-left" >
                            <#if (content.previouspage)??>
                                <a href="${content.previouspage}.html">Previous</a>
                            <#else></#if>
                        </div>
                        <div class="button-icon-right" >
                            <#if (content.nextpage)??>
                                <a href="${content.nextpage}.html">Next</a>
                            <#else></#if>
                        </div>
                    </div>
                    <#nested>
                    <div class="previousnextmenu">
                        <div class="button-icon-left" >
                            <#if (content.previouspage)??>
                                <a href="${content.previouspage}.html">Previous</a>
                            <#else></#if>
                        </div>
                        <div class="button-icon-right" >
                            <#if (content.nextpage)??>
                                <a href="${content.nextpage}.html">Next</a>
                            <#else></#if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </@parent.layout>
</#macro>