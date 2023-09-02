package com.example.SelfMeal.gptResponse.exception;

import com.example.SelfMeal.common.constants.ErrorCode;
import com.example.SelfMeal.common.exception.GeneralException;

public class DietDoesNotExistException extends GeneralException {
    public DietDoesNotExistException() {
        super(ErrorCode.DIET_DOES_NOT_EXIST);
    }
}
