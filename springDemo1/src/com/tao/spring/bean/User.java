package com.tao.spring.bean;

import java.util.*;

public class User {
    private String username;
    private String password;
    private String age;
    private Address address;
    private List<String> course;
    private Map<String,String> infos;
    private Set<String> cars;
    private Properties properties;
    private String[] mems;

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", age='" + age + '\'' +
                ", address=" + address +
                ", course=" + course +
                ", infos=" + infos +
                ", cars=" + cars +
                ", properties=" + properties +
                ", mems=" + Arrays.toString(mems) +
                '}';
    }

    public List<String> getCourse() {
        return course;
    }

    public void setCourse(List<String> course) {
        this.course = course;
    }

    public Map<String, String> getInfos() {
        return infos;
    }

    public void setInfos(Map<String, String> infos) {
        this.infos = infos;
    }

    public Set<String> getCars() {
        return cars;
    }

    public void setCars(Set<String> cars) {
        this.cars = cars;
    }

    public Properties getProperties() {
        return properties;
    }

    public void setProperties(Properties properties) {
        this.properties = properties;
    }

    public String[] getMems() {
        return mems;
    }

    public void setMems(String[] mems) {
        this.mems = mems;
    }

    public String getUsername() {
        return username;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public User() {
    }

    public User(String username, String password, String age) {
        this.username = username;
        this.password = password;
        this.age = age;
    }

}
