package com.restrant.biz;

import java.util.List;

import com.restrant.entity.Orderdts;

public interface OrderDtsBiz {
	
	//���ɶ����ӱ�������ϸ��
    public void addOrderDts(Orderdts dts);
    
    //���ݶ��������Ż�ȡ������ϸ�б�
  	public List getOrderDtsByOid(int oid);	

}
