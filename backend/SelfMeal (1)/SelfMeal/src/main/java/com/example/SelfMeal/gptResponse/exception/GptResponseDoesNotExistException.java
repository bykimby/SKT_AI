package com.example.SelfMeal.gptResponse.exception;

import com.example.SelfMeal.common.constants.ErrorCode;
import com.example.SelfMeal.common.exception.GeneralException;

public class GptResponseDoesNotExistException extends GeneralException {
    public GptResponseDoesNotExistException(){
        super(ErrorCode.GPT_RESPONSE_DOES_NOT_EXIST);
    }
}
