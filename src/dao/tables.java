/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import javax.swing.JOptionPane;

/**
 *
 * @author MINE
 */
public class tables {

    public static void main(String[] args) {
        try {
            String userTable = "create table user(id int AUTO_INCREMENT primary key, name varchar(200), email varchar(200), mobileNumber varchar(10), address varchar(200), password varchar(200), securityQuestion varchar(200), answer varchar(200), status varchar(20), UNIQUE (email))";
            String adminDetails = "insert into user(name,email,mobileNumber,address,password,securityQuestion,answer,status) values('Admin','admin@gmail.com','0964708639','Hà Nội','020790','Quê bạn ở đâu?','Hà Nội','true')";
            DbOperations.setDataOrDelete(userTable, "Bảng User đã được tạo thành công!");
            DbOperations.setDataOrDelete(adminDetails, "Thông tin quản trị viên được thêm thành công!");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }
}
