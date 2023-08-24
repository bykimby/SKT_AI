package com.example.studyproject.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name="post")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PostEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="post_id")
    private Long id;
    private String category;
    private String title;
    private String thumbnail_url;
    private String description;
    private Long price;
    private Long view_count;
    private String status;
    @ManyToOne(fetch = FetchType.LAZY)//fetchtype을 eager로 하면 가능 그러면 getallposts를 dto로 해도 되는지? 직렬화의 문제가 있었음
    @JoinColumn(name="user_id")
    private UserEntity user_id;//foriegn key
    public Long getId() {
        return id;
    }
}
