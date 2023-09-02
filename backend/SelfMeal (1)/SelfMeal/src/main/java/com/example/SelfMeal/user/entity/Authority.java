package com.example.SelfMeal.user.entity;

import com.example.SelfMeal.user.domain.entity.UserEntity;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Authority {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonIgnore
    @Column(name="authorityId")
    private Long authorityId;
    private String name;

    @JoinColumn(name="user")
    @ManyToOne(fetch=FetchType.LAZY)
    @JsonIgnore
    private UserEntity userEntity;
    public void setUserEntity(UserEntity userEntity){
        this.userEntity=userEntity;
    }
}
