package com;
import java.util.ArrayList;
import java.util.HashMap;

public class status {
	private ArrayList<String>zhuangtai;
	private HashMap<String,ArrayList<String>>tiMu;
	
	public status(){
		zhuangtai = new ArrayList<String>();
		tiMu = new HashMap<String,ArrayList<String>>();
		String qingkuang ="没有接到男朋友电话";
		zhuangtai.add(qingkuang);
		String xuanxiang1 ="我手机静音了";
		String xuanxiang2 ="我在看电视";
		String xuanxiang3 ="我在给你买东西";
		String xuanxiang4 ="我在工作";
		
	}
	

}
