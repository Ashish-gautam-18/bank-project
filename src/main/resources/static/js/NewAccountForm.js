
	const form = document.querySelector('form');
	const password = document.getElementById('password');
	const confPassword = document.getElementById('conf_password');

	form.addEventListener('submit', function(event) {
	    if (password.value !== confPassword.value) {
	        alert("Error: Password and Confirm Password do not match!");
	        confPassword.focus();
	        event.preventDefault(); // Stops the form from submitting
	    }
	});
	