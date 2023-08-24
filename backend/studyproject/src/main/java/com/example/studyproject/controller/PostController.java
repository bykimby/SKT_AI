package com.example.studyproject.controller;

import com.example.studyproject.entity.PostDto;
import com.example.studyproject.mapper.PostMapper;
import com.example.studyproject.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/post")
public class PostController {
    private final PostService postService;
    private final PostMapper postMapper;
    @Autowired
    public PostController(PostService postService, PostMapper postMapper) {
        this.postService = postService;
        this.postMapper=postMapper;
    }
    @GetMapping("")
    public List<PostDto> getAllPosts() {
        List<PostDto> posts = postService.getAllPosts();
        return posts;
    }

    @GetMapping("/{id}")
    public PostDto getPostById(@PathVariable("id") Long id) {
        return postService.getPostById(id);//post_id로 찾는 것
    }

    @PostMapping("")
    public PostDto createPost(@RequestBody PostDto postDto) {
        return postService.createPost(postDto);
    }

    @PutMapping("/{id}")
    public PostDto updatePost(@PathVariable("id") Long post_id, @RequestBody PostDto postDto) {
        return postService.updatePost(post_id,postDto);
    }
    @DeleteMapping("/{id}")
    public void deletePost(@PathVariable("id") Long id) {
        postService.deletePost(id);
    }

    @GetMapping("/search")
    public List<PostDto> searchPostsByTitle(@RequestParam("keyword") String keyword){
        return postService.searchPostsByTitle(keyword);
    }
}