/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Controller.HomeController;
import Model.Book;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Chuong
 */
public class main {
    public static void main(String[] args) {
        BookDAO dao=new BookDAO();
        List<Book>list = new ArrayList<>(); 
        list=dao.getAll();
        System.out.println(list.get(0));
    }
}
