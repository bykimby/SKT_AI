package com.example.SelfMeal.user.exception;

import com.example.SelfMeal.common.constants.ErrorCode;
import com.example.SelfMeal.common.exception.GeneralException;

public class InvalidTokenException extends GeneralException {
    public InvalidTokenException(){
        super(ErrorCode.NOT_VALID_TOKEN);
    }
}
