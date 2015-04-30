package pl.wybornie.validators;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import pl.wybornie.entity.User;
import pl.wybornie.service.UserService;

public class UserValidator implements Validator {

	@Autowired
	private UserService userService;
	
	public UserValidator(UserService userService) {
		this.userService = userService;
	}
	
	@Override
	public boolean supports(Class<?> clazz) {
		return clazz.equals(User.class);
	}

	@Override
	public void validate(Object object, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "login", "validation.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "validation.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "validation.required");
		
		User user = (User) object;
		if (!user.getEmail().isEmpty()) {
			String email = user.getEmail();
			if (userService.getUserByEmail(email) != null) {
				errors.rejectValue("email", "validation.emailExists");
			}
		} 
		if (!user.getLogin().isEmpty()) {
			String login = user.getLogin();
			if (userService.getUserByLogin(login) != null) {
				errors.rejectValue("login", "validation.loginExists");
			}
		}
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
}
