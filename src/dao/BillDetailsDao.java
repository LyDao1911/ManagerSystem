/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import javax.swing.JOptionPane;
import java.sql.*;
import java.util.ArrayList;
import model.BillDetails;

/**
 *
 * @author MINE
 */
public class BillDetailsDao {

    public static void save(BillDetails billDetail) {
        String query = "insert into billsdetail(billID, productName, quantity, price) values('" + billDetail.getBillID() + "','" + billDetail.getProductName() + "','" + billDetail.getQuantity() + "','" + billDetail.getPrice() + "')";
        DbOperations.setDataOrDelete(query, "Chi tiết hóa đơn đã được thêm thành công!");
    }

    // Phương thức để lấy tất cả chi tiết hóa đơn theo billID
    public static ArrayList<BillDetails> getAllRecordsByBillID(int billID) {
        ArrayList<BillDetails> arrayList = new ArrayList<>();
        try {
            ResultSet rs = DbOperations.getData("select * from billDetails where billID = " + billID);
            while (rs.next()) {
                BillDetails billDetail = new BillDetails();
                billDetail.setId(rs.getInt("id"));
                billDetail.setBillID(rs.getInt("billID"));
                billDetail.setProductName(rs.getString("productID"));
                billDetail.setQuantity(rs.getInt("quantity"));
                billDetail.setPrice(rs.getString("price"));
                arrayList.add(billDetail);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return arrayList;
    }

    // Phương thức để lấy tất cả chi tiết hóa đơn (không theo billID)
    public static ArrayList<BillDetails> getAllRecords() {
        ArrayList<BillDetails> arrayList = new ArrayList<>();
        try {
            ResultSet rs = DbOperations.getData("select * from billDetails");
            while (rs.next()) {
                BillDetails billDetail = new BillDetails();
                billDetail.setId(rs.getInt("id"));
                billDetail.setBillID(rs.getInt("billID"));
                billDetail.setProductName(rs.getString("productID"));
                billDetail.setQuantity(rs.getInt("quantity"));
                billDetail.setPrice(rs.getString("price"));
                arrayList.add(billDetail);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return arrayList;
    }
}
