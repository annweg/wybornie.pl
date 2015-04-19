function enableMenuForms() {
	$('.dropdown-menu').find('form').click(function (e) {
		e.stopPropagation();
	});
}