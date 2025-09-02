
package com.multi.model;

import lombok.*;

//model, domain, vo, dto

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int id;
    private String name;
    private int age;

}
