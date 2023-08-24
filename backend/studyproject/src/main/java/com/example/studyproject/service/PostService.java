package com.example.studyproject.service;

import com.example.studyproject.entity.PostDto;
import com.example.studyproject.mapper.PostMapper;
import com.example.studyproject.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import com.example.studyproject.entity.PostEntity;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.NoSuchElementException;
import java.util.stream.Collectors;

@Service
public class PostService {
    private final PostRepository postRepository;
    private final PostMapper postMapper;

    @Autowired
    public PostService(PostRepository postRepository, PostMapper postMapper) {
        this.postRepository = postRepository;
        this.postMapper = postMapper;
    }
//    public List<PostEntity> getAllPosts() {
//        return postRepository.findAll();
//    }
    public List<PostDto> getAllPosts() {
        List<PostEntity> postEntities = postRepository.findAll();

        // PostEntity 리스트를 PostDto 리스트로 변환
        List<PostDto> postDtos = postEntities.stream()
                .map(postEntity -> postMapper.toDto(postEntity))
                .collect(Collectors.toList());

        return postDtos;
    }

    public PostDto getPostById(Long post_id) {
        PostEntity postEntity=postRepository.findById(post_id).orElseThrow(() -> new NoSuchElementException("Post not found with id: " + post_id));
        return postMapper.toDto(postEntity);
    }

    public PostDto createPost(PostDto postDto) {//완성
        PostEntity postEntity = postMapper.toEntity(postDto);
        PostEntity returnEntity =  postRepository.save(postEntity);
        return postMapper.toDto(returnEntity);
    }

    public PostDto updatePost(Long post_id,PostDto postDto) {
        //id로 찾고
        PostEntity postEntity=postRepository.findById(post_id).orElseThrow();
        //post Entity에는 기존 정보 입력되어 있음
        //새 정보 입력
        postEntity.setCategory(postDto.getCategory());
        postEntity.setTitle(postDto.getTitle());
        postEntity.setThumbnail_url(postDto.getThumbnail_url());
        postEntity.setDescription(postDto.getDescription());
        postEntity.setPrice(postDto.getPrice());
        postEntity.setView_count(postDto.getView_count());
        postEntity.setStatus(postDto.getStatus());
        PostEntity returnEntity =  postRepository.save(postEntity);
        return postMapper.toDto(returnEntity);//user_id 받아서 update
    }

    public List<PostDto> searchPostsByTitle(String keyword){
        List<PostEntity> postEntities=postRepository.findByTitleContaining(keyword);
        List<PostDto> postDtos = postEntities.stream()
                .map(postEntity -> postMapper.toDto(postEntity))
                .collect(Collectors.toList());
        return postDtos;
    }

    public void deletePost(Long id) {
        postRepository.deleteById(id);
    }
}
