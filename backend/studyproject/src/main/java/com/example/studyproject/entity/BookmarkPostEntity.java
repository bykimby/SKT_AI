package com.example.studyproject.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(name="bookmarkpost")
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BookmarkPostEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private UserEntity user_id;
    //user로 바꿔야
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="post_id")
    private PostEntity post_id;
}
