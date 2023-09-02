package com.example.SelfMeal.user.service;




import com.example.SelfMeal.diet.exception.UserDoesNotExistException;
import com.example.SelfMeal.user.domain.custom.CustomPasswordEncoder;
import com.example.SelfMeal.user.domain.dto.*;
import com.example.SelfMeal.user.domain.entity.UserEntity;
import com.example.SelfMeal.user.domain.jwt.TokenProvider;
import com.example.SelfMeal.user.dto.MyPageResDto;
import com.example.SelfMeal.user.exception.DuplicatedNameException;
import com.example.SelfMeal.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.apache.catalina.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.Optional;



@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final TokenProvider tokenProvider;

//    public UserService(UserRepository userRepository, TokenProvider tokenProvider) {
//        this.userRepository = userRepository;
//        this.tokenProvider = tokenProvider;
//    }

    public Optional<UserEntity> getUserByUserId(Long userId){
        Optional<UserEntity> userEntity=userRepository.findById(userId);
        return userEntity;
    }
    @Transactional(readOnly=true)
    public UserNameDuplicatedResDto isDuplicatedUser(UserNameDuplicatedReqDto userNameDuplicatedReqDto){
        Boolean isDuplicated=userRepository.findByUserName(userNameDuplicatedReqDto.getUserName()).isPresent();
        //isDuplicated ==false 는 없는 것
        return UserNameDuplicatedResDto.builder()
                .userName(userNameDuplicatedReqDto.getUserName())
                .isDuplicated(isDuplicated)
                .build();
    }


    @Transactional
    public LoginResDto login(LoginReqDto loginReqDto){
        Optional<UserEntity> opUserEntity=userRepository.findByUserName(loginReqDto.getUserName());
        if(opUserEntity.isEmpty())
            throw new UserDoesNotExistException();
        UserEntity userEntity=opUserEntity.get();
        return LoginResDto.builder()
                .userId(userEntity.getId())
                .token(tokenProvider.createToken(userEntity.getUserName()))
            .build();
    }

    @Transactional
    public RegisterResDto register(RegisterReqDto registerReqDto){
        //validateNameDuplication(registerReqDto.getUserName());
        float currentWeight= registerReqDto.getCurrentWeight();
        float targetWeight=registerReqDto.getTargetWeight();
        Long targetDate=registerReqDto.getTargetDate();
        String gender= registerReqDto.getGender();
        double kcalToEat=0;
        if(targetWeight!= currentWeight)
        {
            if(gender=="여성")
                kcalToEat=currentWeight*0.9*24-7700*(currentWeight-targetWeight)/targetDate;//기초대사량 + 활동대사량-음식량=하루에 빠져야 할 칼로리
            else
                kcalToEat=currentWeight*24-7700*(currentWeight-targetWeight)/targetDate;
        }
        UserEntity userEntity= UserEntity.builder()
                .userName(registerReqDto.getUserName())
                .password(CustomPasswordEncoder.hashPassword(registerReqDto.getPassword()))
                .age(registerReqDto.getAge())
                .gender(registerReqDto.getGender())
                .height(registerReqDto.getHeight())
                .currentWeight(registerReqDto.getCurrentWeight())
                .targetWeight(registerReqDto.getTargetWeight())
                .kcalToEat(kcalToEat)
                .targetDate(registerReqDto.getTargetDate())
                .disease(registerReqDto.getDisease())
                .build();
        userRepository.save(userEntity);
        return RegisterResDto.builder()
                .userName(userEntity.getUserName())
                .age(userEntity.getAge())
                .gender(userEntity.getGender())
                .height(userEntity.getHeight())
                .kcalToEat(kcalToEat)
                .build();
    }
    private void validateNameDuplication(String userName){
        boolean isDuplicated=userRepository.findByUserName(userName).isPresent();
        if(isDuplicated)
        {
            throw new DuplicatedNameException();
        }
    }
    @Transactional
    public MyPageResDto getMyPage(String userName){
        Optional<UserEntity> opUserEntity=userRepository.findByUserName(userName);
        if(opUserEntity.isEmpty())
            throw new UserDoesNotExistException();
        UserEntity userEntity=opUserEntity.get();
        return MyPageResDto.builder()
                .userName(userEntity.getUserName())
                .gender(userEntity.getGender())
                .height(userEntity.getHeight())
                .age(userEntity.getAge())
                .kcalToEat(userEntity.getKcalToEat())
                .targetWeight(userEntity.getTargetWeight())
                .build();
    }
}