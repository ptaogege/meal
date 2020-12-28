package com.restrant.dao;

import java.util.List;

import com.restrant.entity.Meal;

public interface MealDAO {
	//��ȡָ��ҳ��ʾ�Ĳ�Ʒ�б�
	public List getAllMeal(int page);
	
	//ͳ�����в�Ʒ����
	public Integer getCountOfAllMeal();
	
	//��ȡָ����ϵ��ָ��ҳ��ʾ�Ĳ�Ʒ�б�
	//public List getMealBySeries(int mealSeries,int page);
	
	//ͳ��ָ����ϵͳ�Ĳ�Ʒ����
	//public Integer getCountOfMeal(int mealSeries);
	
	//���ݲ�ѯ��������ȡָ��ҳ��ʾ�Ĳ�Ʒ�б�
	public List getMealByCondition(Meal condition, int page);
	
	//ͳ�Ʒ��ϲ�ѯ�����Ĳ�Ʒ����
	public Integer getCountOfMeal(Meal condition);
	
	//���ݱ�ż��ز�Ʒ
	public Meal getMealByMealId(int mealId);
	
	//��Ӳ�Ʒ
	public void addMeal(Meal meal);
	
	//ɾ����Ʒ
	public void deleteMeal(Meal meal);
	
	//�޸Ĳ�Ʒ����
	public void updateMeal(Meal meal);
	
}
