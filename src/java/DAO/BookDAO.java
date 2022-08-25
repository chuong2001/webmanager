/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dell Precision 7510
 */
public class BookDAO {
    private String dbURL = "jdbc:mysql://localhost:3306/demo";
    private String user_name = "root";
    private String password = "123456";
    public Connection connection = DBConnection.getConnection(dbURL, user_name, password);
    public List<Book>getAll(){
        List<Book>list = new ArrayList<>();
        String sql = "select * from book";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet re = st.executeQuery();
            while( re.next() ){
                Book book = new Book();
                book.setId(re.getInt("id"));
                book.setName(re.getNString("name"));
                book.setPublishingYear(re.getNString("publishingYear"));
                book.setPrice(re.getDouble("price"));
                book.setAmount(re.getInt("amount"));
                book.setAuthor(re.getNString("author"));
                list.add(book);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    public void insert(Book book){
        String sql = "insert into book(name,author,publishingYear,price,amount) values(?,?,?,?,?)";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setNString(1, book.getName());
            st.setNString(2, book.getAuthor());
            st.setNString(3, book.getPublishingYear());
            st.setDouble(4, book.getPrice());
            st.setInt(5, book.getAmount());
            st.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
    }
    public boolean checkAccount(String email, String password){
        String sql = "select * from user where email = ? and password = ?";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setNString(1, email);
            st.setNString(2, password);
            ResultSet re = st.executeQuery();
            while( re.next() ){
                return true;
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return false;
    }
}
