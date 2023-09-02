package com.example.SelfMeal.gptResponse.repository;

import com.example.SelfMeal.gptResponse.entity.GptResponseEntity;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import java.util.List;
import java.util.Optional;

public interface GptResponseRepository extends JpaRepository<GptResponseEntity,Long> {
    List<GptResponseEntity> findByUserIdAndDietNameContaining(Long userId, String keyword);

    List<GptResponseEntity> findByUserId(Long userId);
    //List<GptResponseEntity> findAllByOrderByLikesDesc(Pageable pageable);
    Optional<GptResponseEntity> findByGptResponseId(Long gptResponseId);

}
