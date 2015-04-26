function enableMenuForms() {
	$('.dropdown-menu').find('form').click(function (e) {
		e.stopPropagation();
	});
}

function removeLoginForm() {
	var loginForm = document.getElementById('logingForm');
	loginForm.remove();
}