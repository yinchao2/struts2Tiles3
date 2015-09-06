package com.struts2.tiles3.web.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

public class JSONDataAction extends ActionSupport {
	
	private List<String> lists = new ArrayList<String>();
	private Map<String, String> maps = new HashMap<String, String>();
	
	public JSONDataAction(){
		lists.add("list1");
		lists.add("list2");
		lists.add("list3");
		lists.add("list4");
		lists.add("list5");
		
		maps.put("key1", "value1");
		maps.put("key2", "value2");
		maps.put("key3", "value3");
		maps.put("key4", "value4");
		maps.put("key5", "value5");
	}

	public List<String> getLists() {
		return lists;
	}

	public void setLists(List<String> lists) {
		this.lists = lists;
	}

	public Map<String, String> getMaps() {
		return maps;
	}

	public void setMaps(Map<String, String> maps) {
		this.maps = maps;
	}
	
	public String execute() {
        return SUCCESS;
	}
}
