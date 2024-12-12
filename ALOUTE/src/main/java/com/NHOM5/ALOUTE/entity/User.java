package com.NHOM5.ALOUTE.entity;

import java.util.Date;
import java.util.List;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.JoinColumn;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long userId;
	
	@NotNull
	@Column(unique = true)
	private String username;
	
	@NotNull
	@Column(unique = true)
	private String email;
	
	@NotNull
	private String password;
	
	private String profilePicture;
	
	private String role;
	
	@CreationTimestamp
    @Column(updatable = false, name = "created_at")
    private Date createdAt;
	
	@UpdateTimestamp
    @Column(name = "updated_at")
    private Date updatedAt;
	
	@ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "following",
            joinColumns = @JoinColumn(name = "following_user_id"),
            inverseJoinColumns = @JoinColumn(name = "followed_user_id"))
    private List<User> following;

    @ManyToMany(mappedBy = "following",fetch = FetchType.LAZY)
    private List<User> followers;
}
