package com.example.SelfMeal.diet.mapper;



import com.example.SelfMeal.user.domain.entity.UserEntity;
import com.example.SelfMeal.diet.dto.DietDto;
import com.example.SelfMeal.diet.entity.DietEntity;
import com.example.SelfMeal.user.service.UserService;
import org.springframework.stereotype.Component;

@Component
public class DietMapper {


    public DietMapper(UserService userService) {
        this.userService = userService;
    }

    private final UserService userService;

    public DietDto toDto(DietEntity dietEntity) {
        DietDto dietDto = new DietDto();
        dietDto.setDietId(dietEntity.getDietId());
        dietDto.setKcalToEat(dietEntity.getKcalToEat());
        dietDto.setAvailableIngredients(dietEntity.getAvailableIngredients());
        dietDto.setMeal(dietEntity.getMeal());
        dietDto.setInavailableIngredients(dietEntity.getInavailableIngredients());
        dietDto.setDietDisease(dietEntity.getDietDisease());
        dietDto.setUserId(dietEntity.getUserIdFromUser());
        return dietDto;
    }

    public DietEntity toEntity(DietDto dietDto) {
        DietEntity dietEntity = DietEntity.builder()
                .dietId(dietDto.getDietId())
                .kcalToEat(dietDto.getKcalToEat())
                .availableIngredients(dietDto.getAvailableIngredients())
                .meal(dietDto.getMeal())
                .inavailableIngredients(dietDto.getInavailableIngredients())
                .dietDisease(dietDto.getDietDisease())
                .build();
        UserEntity userEntity=userService.getUserByUserId(dietDto.getUserId()).get();
        dietEntity.setUser(userEntity);
        return dietEntity;
    }
}
