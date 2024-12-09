package anhuynh.com.ALO_UTE.entity;

import java.sql.Date;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "posts")
public class Post {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;
	@Column(columnDefinition = "TEXT")
	private String text;
	@Column(columnDefinition = "TEXT")
	private String imageUrl;
	@Column(columnDefinition = "TEXT")
	private String videoUrl;
	@CreationTimestamp
	@Column(updatable = false, name = "created_at")
	private Date createdAt;

	public Post() {
		super();
	}

	public Post(Integer id, User user, String text, String imageUrl, String videoUrl, Date createdAt) {
		super();
		this.id = id;
		this.user = user;
		this.text = text;
		this.imageUrl = imageUrl;
		this.videoUrl = videoUrl;
		this.createdAt = createdAt;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getVideoUrl() {
		return videoUrl;
	}

	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

}
