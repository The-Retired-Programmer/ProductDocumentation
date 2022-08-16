/* needs a licence header */
let indexhidden = false;
function hideIndex() {
    var el = document.getElementById("visible-index");
    el.style.display = "none";
    var el = document.getElementById("minimised-index");
    el.style.display = "block";
    var el = document.getElementById("main-content");
    el.style.width = "95%";
    indexhidden = true;
}
function unhideIndex() {
    var el = document.getElementById("main-content");
    el.style.width = "75%";
    var el = document.getElementById("minimised-index");
    el.style.display = "none";
    var el = document.getElementById("visible-index");
    el.style.display = "block";
    indexhidden = false;
}
var indexmenu = true;
function setupIndexhide() {
    const mediaQuery = window.matchMedia('(max-width: 799px)');
    if (!mediaQuery.matches) {
        indexmenu = false;
        var params = new URLSearchParams(window.location.search);
        var requiredstate = params.get("indexstate");
        if (requiredstate === "HIDE") {
            hideIndex();
        } else {
            unhideIndex();
        }
        var elements_a = document.getElementsByTagName("a");
        var count = elements_a.length;
        for (var i = 0; i < count; i++) {
            var el = elements_a[i];
            var href = el.href;
            if (!(href.slice(0, 8) === "https://" || href.slice(0, 7) === "http://")) {
                el.setAttribute("onclick", "return addStateValuesAndNavigate(this)");
            }
        }
    }
}
function addStateValuesAndNavigate(el) {
    var params = new URLSearchParams();
    params.append("indexstate", indexhidden ? "HIDE" : "VISIBLE");
    var url = el.href;
    var urlparts = url.split("#");
    if (urlparts.length === 2) {
        location.href = urlparts[0] + "?" + params.toString() + "#" + urlparts[1];
    } else {
        location.href = url + "?" + params.toString();
    }
    return false;
}
function display(id) {
    var el = document.getElementById(id);
    el.style.display = "block";
}
function hide(id) {
    var el = document.getElementById(id);
    el.style.display = "none";
}
