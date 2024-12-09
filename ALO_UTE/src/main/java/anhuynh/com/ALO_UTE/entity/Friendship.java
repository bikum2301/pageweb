package anhuynh.com.ALO_UTE.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "friendships")
public class Friendship {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	@ManyToOne
	@JoinColumn(name = "friend_id")
	private User friend;

	public Friendship() {
		super();
	}

	public Friendship(Integer id, User user, User friend) {
		super();
		this.id = id;
		this.user = user;
		this.friend = friend;
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

	public User getFriend() {
		return friend;
	}

	public void setFriend(User friend) {
		this.friend = friend;
	}

}
