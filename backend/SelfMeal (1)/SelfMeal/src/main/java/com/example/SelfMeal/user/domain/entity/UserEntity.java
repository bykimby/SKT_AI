package com.example.SelfMeal.user.domain.entity;

import jakarta.persistence.*;
import lombok.*;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.LocalDate;


@Entity
@Table(name="user")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder()
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String userName;
    private String password;
    private String gender;
    private int age;
    private float height;
    private float currentWeight;
    private float targetWeight;
    private Long targetDate;
    private String disease;
    private double kcalToEat;
}
