package com.example.studyproject.repository;

import com.example.studyproject.entity.BookmarkPostEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookmarkPostRepository extends JpaRepository<BookmarkPostEntity,Long> {
}
