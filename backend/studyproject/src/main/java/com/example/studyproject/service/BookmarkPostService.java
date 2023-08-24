package com.example.studyproject.service;

import com.example.studyproject.entity.BookmarkPostDto;
import com.example.studyproject.entity.BookmarkPostEntity;
import com.example.studyproject.mapper.BookmarkPostMapper;
import com.example.studyproject.repository.BookmarkPostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class BookmarkPostService {
    private final BookmarkPostRepository bookmarkPostRepository;
    private final BookmarkPostMapper bookmarkPostMapper;
    @Autowired
    public BookmarkPostService(BookmarkPostRepository bookmarkPostRepository, BookmarkPostMapper bookmarkPostMapper) {
        this.bookmarkPostRepository = bookmarkPostRepository;
        this.bookmarkPostMapper = bookmarkPostMapper;
    }
    //목록조회
    public List<BookmarkPostDto> getAllBookmarkPosts() {
        List<BookmarkPostEntity> bookmarkPostEntities = bookmarkPostRepository.findAll();

        // PostEntity 리스트를 PostDto 리스트로 변환
        List<BookmarkPostDto> bookmarkPostDtos = bookmarkPostEntities.stream()
                .map(bookmarkPostEntity -> bookmarkPostMapper.toDto(bookmarkPostEntity))
                .collect(Collectors.toList());

        return bookmarkPostDtos;
    }
    //추가
    public BookmarkPostDto createBookmarkPost(BookmarkPostDto bookmarkPostDto) {
        BookmarkPostEntity bookmarkPostEntity = bookmarkPostMapper.toEntity(bookmarkPostDto);
        BookmarkPostEntity returnEntity =  bookmarkPostRepository.save(bookmarkPostEntity);
        return bookmarkPostMapper.toDto(returnEntity);
    }
    //삭제
    public void deleteBookmarkPost(Long id) {
        bookmarkPostRepository.deleteById(id);
    }
}
