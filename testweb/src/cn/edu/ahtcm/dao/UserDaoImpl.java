package cn.edu.ahtcm.dao;

import cn.edu.ahtcm.bean.User;
import cn.edu.ahtcm.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UserDaoImpl implements UserDao {
    Connection conn = DBUtil.getConnection();
    @Override
    public User login(String name, String password) {
        String sql = "select * from t_user where name=? and password=?";
        User user = null;
        PreparedStatement ps = null;

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,name);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            //如果有结果bean 导入
            if (rs.next()){
                user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));

            }
            DBUtil.release(rs,null,ps,conn);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public boolean register(String name, String password) {
        String sql = "insert into t_user(name,password) values(?,?)";
        int count = 0;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,name);
            ps.setString(2,password);
            count = ps.executeUpdate();
            DBUtil.release(null,null,ps,conn);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(count==0){
            return false;
        }else{
            return  true;
        }
    }


    @Override
    public List<User> getUsers() {
        return null;
    }
}
