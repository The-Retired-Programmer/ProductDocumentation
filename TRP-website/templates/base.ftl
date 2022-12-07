<#macro layout title="">
    <#assign _title2 = content.title!title/>
    <#assign _title = config.title>
    <#if _title2 != "">
        <#assign _title =  _title+" - "+_title2/>
     <#else></#if>
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="utf-8"/>
            <title>${_title}</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="description" content="">
            <meta name="author" content="">
            <meta name="keywords" content="">
            <meta name="generator" content="JBake">

            <link href="${content.rootpath!}css/bootstrap.min.css" rel="stylesheet">
            <link href="${content.rootpath!}css/asciidoctor.css" rel="stylesheet">
            <link href="${content.rootpath!}css/base.css" rel="stylesheet">
            <link href="${content.rootpath!}css/prettify.css" rel="stylesheet">
            <link href="${content.rootpath!}css/styles_trp.css" rel="stylesheet">

            <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
            <!--[if lt IE 9]>
              <script src="${content.rootpath!}js/html5shiv.min.js"></script>
            <![endif]-->

            <!-- Fav and touch icons -->
            <!--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
            <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
            <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
            <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">-->
            <link rel="shortcut icon" href="${content.rootpath!}favicon.ico">
        </head>
        <body onload="prettyPrint()">
            <div id="wrap">
                <!-- Fixed navbar -->
                <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                    <div class="container">
                        <a class="navbar-brand" href="${content.rootpath!}index.html">The Retired Programmer</a>
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li><a href="${content.rootpath!}index.html">Home</a></li>
                                <li><a href="${content.rootpath!}blogindex.html">Blog</a></li>
                                <li><a href="${content.rootpath!}about.html">About</a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="${content.rootpath!}tags/Publishing Tools.html"><b>Publishing Tools</b></a></li>
                                        <li><a href="${content.rootpath!}tags/NetBeans Libraries.html"><b>NetBeans Libraries</b></a></li>
                                        <li><a href="${content.rootpath!}tags/Other NetBeans Tools.html"><b>Other NetBeans Tools</b></a></li>
                                        <li><a href="${content.rootpath!}tags/Pico Products.html"><b>Pico Products</b></a></li>
                                        <li><a href="${content.rootpath!}tags/Retired Products.html"><b>Retired Products</b></a></li>
                                    </ul>
                                </li>
                                <li><a href="${content.rootpath!}archive.html">Archive</a></li>
                            </ul>
                        </div><!--/.nav-collapse -->
                    </div>
                    <h1>${_title2}</h1>
                </div>
                <div class="container">
                    <#nested>
                </div>
                <div id="push"></div>
            </div>
            <div id="footer">
              <div class="container">
                <p class="muted credit">&copy; The-Retired-Programmer 2019&ndash;2022</p>
              </div>
            </div>
            <!-- Placed at the end of the document so the pages load faster -->
            <script src="${content.rootpath!}js/jquery-1.11.1.min.js"></script>
            <script src="${content.rootpath!}js/bootstrap.min.js"></script>
            <script src="${content.rootpath!}js/prettify.js"></script>
        </body>
    </html>
</#macro>