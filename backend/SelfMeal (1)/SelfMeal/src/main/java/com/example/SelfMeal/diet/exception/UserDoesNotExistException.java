package com.example.SelfMeal.diet.exception;

import com.example.SelfMeal.common.constants.ErrorCode;
import com.example.SelfMeal.common.exception.GeneralException;

public class UserDoesNotExistException extends GeneralException {
    public UserDoesNotExistException() {
        super(ErrorCode.MEMBER_DOES_NOT_EXIST);
    }
}
