<#import "base.ftl" as parent>

<@layout/>

<#macro layout>
    <@parent.layout>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="indexblock">
                        <a href="../tags/Publishing Tools.html" ><h1>Publishing Tools</h1></a>
                        <a href="../tags/Publishing Tools.html" >
                            <img src="img/publishing2.jpg" alt="Publishing Tools - tiled image"/>
                        </a>
                        <div class="indextext">
                            <div class="paragraph">
                                <p>Tools that have been created to support my publishing activities.
                                    These will be mainly associated with AsciDoc (for documentation
                                    creation, assembly and publishing) and JBake (for website
                                    creation and assembly).</p>
                                <p><a href="../tags/AsciiDoc.html" >AsciiDoc</a></p>
                                <p><a href="../tags/JBake.html" >JBake</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="indexblock" >
                        <a href="../tags/NetBeans Libraries.html" ><h1>NetBeans Libraries</h1></a>
                        <a href="../tags/NetBeans Libraries.html" >
                            <img src="img/cds600x600.jpg" alt="NetBeans Libraries - servers image"/>
                        </a>
                        <div class="indextext">
                            <div class="paragraph">
                                <p>Library of utility classes that may be useful to other NetBeans Plug-in
                                    developers. Packaged as NetBeans NBM modules</p>
                                <p><a href="../tags/Actions Support.html" >Actions Support</a><p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="indexblock" >
                        <a href="../tags/Other NetBeans Tools.html" ><h1>Other NetBeans Tools</h1></a>
                        <a href="../tags/Other NetBeans Tools.html" >
                            <img src="img/cds600x600.jpg" alt="Other NetBeans Tools - servers image"/>
                        </a>
                        <div class="indextext">
                            <div class="paragraph">
                                    Other tools that have been created for NetBeans
                                    that may be useful to other NetBeans users.
                                    Packaged as NetBeans NBM modules</p>
                                <p><a href="../tags/PostgreSQL.html" >PostgreSQL</a><p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="indexblock">
                        <a href="../tags/Pico Products.html" ><h1>Pico Products</h1></a>
                        <a href="../tags/Pico Products.html" >
                            <img src="img/pico600x600.jpg" alt="pico products - pico image x 2"/>
                        </a>
                        <div class="indextext">
                            <div class="paragraph">
                                <p>Various Pico based products.</p>
                                <p><a href="../tags/Pico Hat.html" >Pico Hat</a></p>
                                <br/>
                                <p>Software Libraries for use with Pico Applications.</p>
                                <p><a href="../tags/Events.html" >Events</a></p>
                                <p><a href="../tags/PTest.html" >PTest</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="indexblock" >
                        <a href="../tags/Retired Products.html" ><h1>Retired Products</h1></a>
                        <a href="../tags/Retired Products.html" >
                            <img src="img/sunset600x600.jpg" alt="retired products - sunset image"/>
                        </a>
                        <div class="indextext">
                            <div class="paragraph">
                                <p>Products that have reached end of life and are no longer
                                    being actively maintained.</p>
                                <p><a href="../tags/Extexp.html" >Extexp</a></p>
                                <p><a href="../tags/NBPCG.html" >NetBeans Platform Code Generator</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </@parent.layout>
</#macro>