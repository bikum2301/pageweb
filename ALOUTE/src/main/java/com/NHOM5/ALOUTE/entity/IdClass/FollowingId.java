package com.NHOM5.ALOUTE.entity.IdClass;

import jakarta.persistence.IdClass;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@IdClass(FollowingId.class)
public class FollowingId {

    private Long following;
    private Long followed;

}