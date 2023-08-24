package com.example.studyproject.controller;


import com.example.studyproject.entity.BookmarkPostDto;
import com.example.studyproject.mapper.BookmarkPostMapper;
import com.example.studyproject.service.BookmarkPostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/bookmarkPost")
public class BookmarkPostController {
    private final BookmarkPostService bookmarkPostService;
    private final BookmarkPostMapper bookmarkPostMapper;
    @Autowired
    public BookmarkPostController(BookmarkPostService bookmarkPostService, BookmarkPostMapper bookmarkPostMapper) {
        this.bookmarkPostService = bookmarkPostService;
        this.bookmarkPostMapper = bookmarkPostMapper;
    }


    //getallbookmarkpost
    @GetMapping("")
    public List<BookmarkPostDto> getAllBookmarkPosts() {
        List<BookmarkPostDto> bookmarkPosts = bookmarkPostService.getAllBookmarkPosts();
        return bookmarkPosts;
    }
    //createbookmarkpost
    @PostMapping("")
    public BookmarkPostDto createBookmarkPost(@RequestBody BookmarkPostDto bookmarkPostDto) {
        return bookmarkPostService.createBookmarkPost(bookmarkPostDto);
    }
    //deletebookmark
    @DeleteMapping("/{id}")
    public void deleteBookmarkPost(@PathVariable("id") Long id) {
        bookmarkPostService.deleteBookmarkPost(id);
    }
}
