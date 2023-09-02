package com.example.SelfMeal.user.exception;

import com.example.SelfMeal.common.constants.ErrorCode;
import com.example.SelfMeal.common.exception.GeneralException;

public class InvalidPasswordException extends GeneralException {
    public InvalidPasswordException(){
        super(ErrorCode.NOT_VALID_PASSWORD);
    }
}
