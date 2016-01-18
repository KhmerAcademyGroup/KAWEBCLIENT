$(document).ready(function() {
	
	$('#myformvalidator').bootstrapValidator({
		message: 'This value is not valid',
//		feedbackIcons: {
//			valid: 'glyphicon glyphicon-ok',
//			invalid: 'glyphicon glyphicon-remove',
//			validating: 'glyphicon glyphicon-refresh'
//		},
		fields: {
			categoryname: {
				message: 'The category name is not valid',
				validators: {
					notEmpty: {
						message: 'The category name is required and can\'t be empty'
					},
					stringLength: {
						min: 6,
						max: 30,
						message: 'The category name must be more than 6 and less than 30 characters long'
					},
					regexp: {
						regexp: /^[a-zA-Z0-9_\.]+$/,
						message: 'The category name can only consist of alphabetical, number, dot and underscore'
					}
				}
			},
			categorylogourl: {
				message: 'The category logo url is not valid',
				validators: {
					notEmpty: {
						message: 'The category logo url is required and can\'t be empty'
					},
					stringLength: {
						min: 6,
						max: 30,
						message: 'The category logo url must be more than 6 and less than 30 characters long'
					},
					regexp: {
						regexp: /^[a-zA-Z0-9_\.]+$/,
						message: 'The category logo url can only consist of alphabetical, number, dot and underscore'
					}
				}
			},
			dateofbirth: {
				message: 'The date of birth  is not valid',
				validators: {
					notEmpty: {
						message: 'The date of birth  is required and can\'t be empty'
					}
				}
			},
			registerdate: {
				message: 'The register date is not valid',
				validators: {
					notEmpty: {
						message: 'The register date is required and can\'t be empty'
					}
				}
			},
			usertype: {
				message: 'The register date is not valid',
				validators: {
					notEmpty: {
						message: 'The register date is required and can\'t be empty'
					}
				}
			},
			username: {
				message: 'The username is not valid',
				validators: {
					notEmpty: {
						message: 'The username is required and can\'t be empty'
					},
					stringLength: {
						min: 4,
						max: 30,
						message: 'The username must be more than 4 and less than 30 characters long'
					}
				}
			},
			country: {
				validators: {
					notEmpty: {
						message: 'The country is required and can\'t be empty'
					}
				}
			},
			acceptTerms: {
				validators: {
					notEmpty: {
						message: 'You have to accept the terms and policies'
					}
				}
			},
			email: {
				validators: {
					notEmpty: {
						message: 'The email address is required and can\'t be empty'
					},
					emailAddress: {
						message: 'The input is not a valid email address'
					}
				}
			},
			website: {
				validators: {
					uri: {
						message: 'The input is not a valid URL'
					}
				}
			},
			phonenumber: {
				validators: {
					notEmpty: {
						message: 'The phone number is required and can\'t be empty'
					},
					digits: {
						message: 'The value can contain only digits'
					}
				}
			},
			color: {
				validators: {
					hexColor: {
						message: 'The input is not a valid hex color'
					}
				}
			},
			zipCode: {
				validators: {
					zipCode: {
						country: 'US',
						message: 'The input is not a valid US zip code'
					}
				}
			},
			password: {
				validators: {
					stringLength: {
						min: 6,
						max: 30,
						message: 'The password must be more than 6 and less than 30 characters long'
					},
					notEmpty: {
						message: 'The password is required and can\'t be empty'
					},
					identical: {
						field: 'confirmpassword',
						message: 'The password and its confirm are not the same'
					}
				}
			},
			confirmpassword: {
				validators: {
					notEmpty: {
						message: 'The confirm password is required and can\'t be empty'
					},
					identical: {
						field: 'password',
						message: 'The password and its confirm are not the same'
					}
				}
			},
			ages: {
				validators: {
					lessThan: {
						value: 100,
						inclusive: true,
						message: 'The ages has to be less than 100'
					},
					greaterThan: {
						value: 10,
						inclusive: false,
						message: 'The ages has to be greater than or equals to 10'
					}
				}
			},
			category: {
				validators: {
					notEmpty: {
						message: 'The category is required and can\'t be empty'
					}
				}
			},
			youtuberul: {
				validators: {
					notEmpty: {
						message: 'The Youtube URL is required and can\'t be empty'
					}
				}
			},
			videoname: {
				validators: {
					notEmpty: {
						message: 'The Video title is required and can\'t be empty'
					}
				}
			},
			year: {
				message: 'The date of birth  is not valid',
				validators: {
					notEmpty: {
						message: 'The Year is required and can\'t be empty'
					},
					digits: {
						message: 'The value can contain only digits'
					},
					lessThan: {
						value: 2050,
						inclusive: true,
						message: 'The years has to be less than 2050'
					},
					greaterThan: {
						value: 1930,
						inclusive: false,
						message: 'The years has to be greater than or equals to 1900'
					}
				}
			},
			month: {
				message: 'The date of birth  is not valid',
				validators: {
					notEmpty: {
						message: 'The date of birth  is required and can\'t be empty'
					}
				}
			},
			day: {
				message: 'The date of birth  is not valid',
				validators: {
					notEmpty: {
						message: 'The date of birth  is required and can\'t be empty'
					}
				}
			},
			fileurl: {
				validators: {
					notEmpty: {
						message: 'The File URL is required and can\'t be empty'
					}
				}
			}
			   
		}
	});
	
	
	$('#myformvalidator1').bootstrapValidator({
		message: 'This value is not valid',
//		feedbackIcons: {
//			valid: 'glyphicon glyphicon-ok',
//			invalid: 'glyphicon glyphicon-remove',
//			validating: 'glyphicon glyphicon-refresh'
//		},
		fields: {
			categoryname: {
				message: 'The category name is not valid',
				validators: {
					notEmpty: {
						message: 'The category name is required and can\'t be empty'
					},
					stringLength: {
						min: 6,
						max: 30,
						message: 'The category name must be more than 6 and less than 30 characters long'
					},
					regexp: {
						regexp: /^[a-zA-Z0-9_\.]+$/,
						message: 'The category name can only consist of alphabetical, number, dot and underscore'
					}
				}
			},
			categorylogourl: {
				message: 'The category logo url is not valid',
				validators: {
					notEmpty: {
						message: 'The category logo url is required and can\'t be empty'
					},
					stringLength: {
						min: 6,
						max: 30,
						message: 'The category logo url must be more than 6 and less than 30 characters long'
					},
					regexp: {
						regexp: /^[a-zA-Z0-9_\.]+$/,
						message: 'The category logo url can only consist of alphabetical, number, dot and underscore'
					}
				}
			},
			dateofbirth: {
				message: 'The date of birth  is not valid',
				validators: {
					notEmpty: {
						message: 'The date of birth  is required and can\'t be empty'
					}
				}
			},
			registerdate: {
				message: 'The register date is not valid',
				validators: {
					notEmpty: {
						message: 'The register date is required and can\'t be empty'
					}
				}
			},
			usertype: {
				message: 'The register date is not valid',
				validators: {
					notEmpty: {
						message: 'The register date is required and can\'t be empty'
					}
				}
			},
			username: {
				message: 'The username is not valid',
				validators: {
					notEmpty: {
						message: 'The username is required and can\'t be empty'
					},
					stringLength: {
						min: 4,
						max: 30,
						message: 'The username must be more than 4 and less than 30 characters long'
					}
				}
			},
			country: {
				validators: {
					notEmpty: {
						message: 'The country is required and can\'t be empty'
					}
				}
			},
			acceptTerms: {
				validators: {
					notEmpty: {
						message: 'You have to accept the terms and policies'
					}
				}
			},
			email: {
				validators: {
					notEmpty: {
						message: 'The email address is required and can\'t be empty'
					},
					emailAddress: {
						message: 'The input is not a valid email address'
					}
				}
			},
			website: {
				validators: {
					uri: {
						message: 'The input is not a valid URL'
					}
				}
			},
			phonenumber: {
				validators: {
					notEmpty: {
						message: 'The Phonenumber is required and can\'t be empty'
					},
					digits: {
						message: 'The value can contain only digits'
					}
				}
			},
			color: {
				validators: {
					hexColor: {
						message: 'The input is not a valid hex color'
					}
				}
			},
			zipCode: {
				validators: {
					zipCode: {
						country: 'US',
						message: 'The input is not a valid US zip code'
					}
				}
			},
			password: {
				validators: {
					stringLength: {
						min: 4,
						max: 30,
						message: 'The password must be more than 4 and less than 30 characters long'
					},
					identical: {
						field: 'confirmpassword',
						message: 'The password and its confirm are not the same'
					}
				}
			},
			oldpassword: {
				validators: {
					
					notEmpty: {
						message: 'The Password is required and can\'t be empty'
					}
				}
			},
			confirmpassword: {
				validators: {
					
					identical: {
						field: 'password',
						message: 'The password and its confirm are not the same'
					}
				}
			},
			ages: {
				validators: {
					lessThan: {
						value: 100,
						inclusive: true,
						message: 'The ages has to be less than 100'
					},
					greaterThan: {
						value: 10,
						inclusive: false,
						message: 'The ages has to be greater than or equals to 10'
					}
				}
			},
			category: {
				validators: {
					notEmpty: {
						message: 'The category is required and can\'t be empty'
					}
				}
			},
			youtuberul: {
				validators: {
					notEmpty: {
						message: 'The Youtube URL is required and can\'t be empty'
					}
				}
			},
			videoname: {
				validators: {
					notEmpty: {
						message: 'The Video title is required and can\'t be empty'
					}
				}
			},
			year: {
				message: 'The date of birth  is not valid',
				validators: {
					notEmpty: {
						message: 'The Year is required and can\'t be empty'
					},
					digits: {
						message: 'The value can contain only digits'
					},
					lessThan: {
						value: 2050,
						inclusive: true,
						message: 'The years has to be less than 2050'
					},
					greaterThan: {
						value: 1930,
						inclusive: false,
						message: 'The years has to be greater than or equals to 1900'
					}
				}
			},
			month: {
				message: 'The date of birth  is not valid',
				validators: {
					notEmpty: {
						message: 'The date of birth  is required and can\'t be empty'
					}
				}
			},
			day: {
				message: 'The date of birth  is not valid',
				validators: {
					notEmpty: {
						message: 'The date of birth  is required and can\'t be empty'
					}
				}
			},
			fileurl: {
				validators: {
					notEmpty: {
						message: 'The File URL is required and can\'t be empty'
					}
				}
			}
			
			   
		}
	});
	
	$('#changepwdvalidator').bootstrapValidator({
		message: 'This value is not valid',

		fields: {
			choldpwd: {
				validators: {
					notEmpty: {
						message: 'The Old Password is required and can\'t be empty'
					}
				}
			},
			chpassword: {
				validators: {
					stringLength: {
						min: 6,
						max: 30,
						message: 'The password must be more than 6 and less than 30 characters long'
					},
					notEmpty: {
						message: 'The password is required and can\'t be empty'
					},
					identical: {
						field: 'chconfirmpassword',
						message: 'The password and its confirm are not the same'
					}
				}
			},
			chconfirmpassword: {
				validators: {
					notEmpty: {
						message: 'The confirm password is required and can\'t be empty'
					},
					identical: {
						field: 'chpassword',
						message: 'The password and its confirm are not the same'
					}
				}
			}
			   
		}
	});
	
	


	$('#video').bootstrapValidator({
		message: 'This value is not valid',
//		feedbackIcons: {
//			valid: 'glyphicon glyphicon-ok',
//			invalid: 'glyphicon glyphicon-remove',
//			validating: 'glyphicon glyphicon-refresh'
//		},
		fields: {
			videoname:{
				validators: {
					notEmpty: {
						message: 'The video name  is required and can\'t be empty'
					}
				}
			},
			youtubeurl:{
				validators: {
					notEmpty: {
						message: 'The youtube url  is required and can\'t be empty'
					}
				}
			},
			fileurl:{
				validators: {
					notEmpty: {
						message: 'The file url  is required and can\'t be empty'
					}
				}
			},
			category:{
				validators: {
					notEmpty: {
						message: 'The category  is required and can\'t be empty'
					}
				}
			}
		}
	});
	
	
});