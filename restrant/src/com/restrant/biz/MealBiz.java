package com.restrant.biz;

import java.util.List;

import com.restrant.entity.Meal;
import com.restrant.entity.Pager;

public interface MealBiz {
	//��ȡָ��ҳ��ʾ�Ĳ�Ʒ�б�
	public List getAllMeal(int page);
	//��ȡ���в�Ʒ����,������ʼ����ҳ��Pager���󣬲�������perPageRows��rowCount����
	public Pager getPagerOfMeal();	
	
	//��ȡָ����ϵ��ָ��ҳ��ʾ�Ĳ�Ʒ�б�
	//public List getMealBySeries(int mealSeries,int page);
	
	//��ȡָ����ϵ�Ĳ�Ʒ����,������ʼ����ҳ��Pager���󣬲�������perPageRows��rowCount����
	//public Pager getPagerOfMeal(int mealSeries);
	
	//���ݲ�ѯ��������ȡָ��ҳ��ʾ�Ĳ�Ʒ�б�
	public List getMealByCondition(Meal condition, int page);
	
	//ͳ�Ʒ��ϲ�ѯ�����Ĳ�Ʒ����,��ʼ����ҳ��Pager��������perPageRows��rowCount����
	public Pager getPagerOfMeal(Meal condition);
	
	//���ݱ�ż��ز�Ʒ
	public Meal getMealByMealId(int mealId);
	
	//��Ӳ�Ʒ
	public void addMeal(Meal meal);
	
	//ɾ��ָ����Ų�Ʒ
	public void deleteMeal(int mealId);
	
	//�޸Ĳ�Ʒ
	public void updateMeal(Meal meal);
	
}
