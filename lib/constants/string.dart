class AppStrings {
  // Splash screen string
  static const String welcomeStatement = "Welcome to Smart Houses";
  static const String splashdescription =
      "Find your dream home easily and quickly";
  static const String getStartedBtn = "Get Started";

  // Register Screen String
  static const String getStarted = "Get Started";
  static const String registerDescription = "by creating a free account.";
  static const String userNameHint = "Full name";
  static const String emailHint = "Valid email";
  static const String phoneNumberHint = "Phone number";
  static const String passwordHint = "Strong password";
  static const String termsAndConditions =
      "By checking the box you agree to our Terms and Conditions";
  static const String nextButtonText = "Next";
  static const String alreadyAMember = "Already a member?";
  static const String loginIn = "Login in";

  // Error Messages
  static const String emptyError = "* Field cannot be empty";
  static const String checkBoxError = "Please accept the terms and conditions";
  static const String invalidUserName =
      "* Username must be at least 3 characters";
  static const String invalidEmailMessage1 = "* Email must be at contains @";
  static const String invalidEmailMessage2 = "* Email must be at contains .com";
  static const String invalidPhoneMessage1 = "* Phone number must be 12 digits";
  static const String invalidPhoneMessage2 = "* Phone number must start with +";
  static const String pattern =
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$';
  static const String invalidPasswordMessage =
      "* Weak password: use 8 chars, uppercase, number & symbol";
}
