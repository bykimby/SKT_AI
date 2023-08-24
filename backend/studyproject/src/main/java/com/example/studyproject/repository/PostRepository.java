package com.example.studyproject.repository;

import com.example.studyproject.entity.PostDto;
import com.example.studyproject.entity.PostEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PostRepository extends JpaRepository<PostEntity, Long> {
    List<PostEntity> findByTitleContaining(String keyword);
}
