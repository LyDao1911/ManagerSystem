/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import com.mysql.cj.protocol.Resultset;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import java.sql.*;
import model.Statistics;

/**
 *
 * @author MINE
 */
public class StatisticsDao {

    // Lấy tổng doanh thu
    public static double getTotalRevenue() {
        double totalRevenue = 0;
        try {
            String query = "SELECT SUM(total) AS totalRevenue FROM bill";
            ResultSet rs = DbOperations.getData(query);
            if (rs.next()) {
                totalRevenue = rs.getDouble("totalRevenue");
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return totalRevenue;
    }

    // Lấy số lượng sản phẩm bán ra theo từng sản phẩm
    public static ArrayList<String[]> getProductSales() {
        ArrayList<String[]> salesList = new ArrayList<>();
        try {
            ResultSet rs = DbOperations.getData("SELECT productName, SUM(quantity) AS totalSold FROM billsdetail GROUP BY productName");
            while (rs.next()) {
                String[] data = new String[2];
                data[0] = rs.getString("productName");
                data[1] = String.valueOf(rs.getInt("totalSold"));
                salesList.add(data);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return salesList;
    }

    //Lấy doanh thu theo từng danh mục
    public static ArrayList<String[]> getRevenueByCategory() {
        ArrayList<String[]> revenueList = new ArrayList<>();
        try {
            ResultSet rs = DbOperations.getData("SELECT p.category, SUM(bd.quantity * bd.price) AS totalRevenue "
                    + "FROM billsdetail bd JOIN product p ON bd.productName = p.name "
                    + "GROUP BY p.category");
            while (rs.next()) {
                String[] data = new String[2];
                data[0] = rs.getString("category");
                data[1] = String.valueOf(rs.getDouble("totalRevenue"));
                revenueList.add(data);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return revenueList;
    }

    // Lấy số hóa đơn theo ngày
    public static ArrayList<String[]> getBillsByDate() {
        ArrayList<String[]> billList = new ArrayList<>();
        try {
            ResultSet rs = DbOperations.getData("SELECT DATE(date) AS billDate, COUNT(*) AS totalBills FROM bill GROUP BY DATE(date)");
            while (rs.next()) {
                String[] data = new String[2];
                data[0] = rs.getString("billDate");
                data[1] = String.valueOf(rs.getInt("totalBills"));
                billList.add(data);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return billList;
    }

    // Lấy danh sách sản phẩm bán chạy nhất
    public static ArrayList<String[]> getTopSellingProducts(int limit) {
        ArrayList<String[]> topProducts = new ArrayList<>();
        try {
            ResultSet rs = DbOperations.getData("SELECT productName, SUM(quantity) AS totalSold "
                    + "FROM billsdetail GROUP BY productName ORDER BY totalSold DESC LIMIT " + limit);
            while (rs.next()) {
                String[] data = new String[2];
                data[0] = rs.getString("productName");
                data[1] = String.valueOf(rs.getInt("totalSold"));
                topProducts.add(data);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return topProducts;
    }
}
