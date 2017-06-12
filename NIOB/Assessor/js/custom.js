setActiveSidebar();

function setActiveSidebar () {
    var url = window.location;
    var element = $('ul.nav-list li ul.submenu a').filter(function () {
        return this.href === url.href;
    }).parent();
    var parent_element = element.parent().parent();
    if (element.is('li')) {
        element.addClass('active');
        element.children(0).removeAttr("href");
    }
    if (parent_element.is('li')) {
        parent_element.addClass('active').addClass("open");
        parent_element.children(0).removeClass("dropdown-toggle");
        parent_element.children(0).children("b.arrow").css("display", "none");
    }
}

$("#sidebar > span").click(function() {
    $("#menu-toggler").click();
})