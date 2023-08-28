package com.example.studyproject.repository;

import com.example.studyproject.entity.DietResponseEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DietResponseRepository extends JpaRepository<DietResponseEntity,Long> {
    List<DietResponseEntity> findByUserIdAntDietNameContaining(Long userId,String keyword);
    List<DietResponseEntity> findByUserId(Long userId);
}
