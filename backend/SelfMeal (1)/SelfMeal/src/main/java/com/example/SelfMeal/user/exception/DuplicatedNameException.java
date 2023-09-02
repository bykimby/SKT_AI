package com.example.SelfMeal.user.exception;

import com.example.SelfMeal.common.constants.ErrorCode;
import com.example.SelfMeal.common.exception.GeneralException;

public class DuplicatedNameException extends GeneralException {
    public DuplicatedNameException(){
        super(ErrorCode.DUPLICATED_NAME);
    }
}
