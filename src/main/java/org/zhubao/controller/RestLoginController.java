package org.zhubao.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.EOFException;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zhubao.vo.RecordVo;

import com.gamecloudstudios.barbarian.model.Item;

@Controller
public class RestLoginController {
 private ObjectMapper objectMapper = new ObjectMapper();
	@RequestMapping(value = {"/login","/"}, method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = {"/login"}, method = RequestMethod.POST)
	public String index() {
		return "redirect:/extra";
	}

	@RequestMapping(value = "/extra", method = RequestMethod.GET)
	public String extra() {
		return "extra";
	}

	@RequestMapping(value = "/data", method = RequestMethod.GET)
	public @ResponseBody
	String data() throws JsonGenerationException, JsonMappingException,
			IOException {
		List<RecordVo> recordVos = new ArrayList<RecordVo>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		RecordVo recordVo = new RecordVo();
		recordVo.setId(1);
		recordVo.setAmount("50");
		recordVo.setInvdate(sdf.format(new Date()));
		recordVo.setName("jason");
		recordVo.setNote("shiguangji");
		recordVo.setTax("2.5");
		recordVo.setTotal("100");
		recordVos.add(recordVo);
		/* JSONObject jsonObject = JSONObject.fromObject(recordVo); */
		ObjectMapper objectMapper = new ObjectMapper();
		String data = objectMapper.writeValueAsString(recordVos);
		return data;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/items", method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
	public @ResponseBody
	String getItems() throws JsonGenerationException, JsonMappingException,
			IOException {
		List<Item> items = new ArrayList<Item>();

		ObjectMapper objectMapper = new ObjectMapper();
		items = objectMapper.readValue(new File("items.json"), List.class);
		String data = objectMapper.writeValueAsString(items);
		return data;
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
	public String editItems(Item item, String oper,String id) throws Exception {
		System.out.println(item.getDescription());
		System.out.println(item.getName());
		System.out.println(item.getItemCategory());
		System.out.println(item.getType());
		System.out.println(item.getUnlockLevel());
		System.out.println(item.getTrait());
		System.out.println(oper);
		
		List<Item> items = new ArrayList<Item>();
		Item[] itemArray = objectMapper.readValue(new File("items.json"),
				Item[].class);
		for(int i = 0 ; i < itemArray.length;i++){
			items.add(itemArray[i]);
		}
		if("edit".equals(oper)){
			editItem(items,item);
		}else if("add".equals(oper)){
			saveItem(items,item);
		}else if("del".equals(oper)){
			deleteItem(items,Integer.parseInt(id));
		}
		return "redirect:/extra";
	}

	private void saveItem(List<Item> items, Item item) throws Exception {
		items.add(item);
		 updateItemJSON(items);
	}

	private void deleteItem(List<Item> items, int id) throws Exception {
		Item deleteItem = null;
		 for(Item itemData : items){
			 if (itemData.getItemId().intValue() == id) {
				 deleteItem = itemData;
				}
		 }
		 System.out.println("---------------"+deleteItem.getName()+"-----------------");
		 items.remove(deleteItem);
		 updateItemJSON(items);
	}

	private void editItem(List<Item> items, Item item) throws Exception {
		for (Item itemData : items) {
			if (itemData.getItemId().intValue() == item.getItemId().intValue()) {
				itemData.copyData(item);
			}
		}
		updateItemJSON(items);
	}

	private void updateItemJSON(List<Item> items)throws Exception {
		String data = objectMapper.writeValueAsString(items);
		String s = "";
		BufferedReader in2 = null;
		PrintWriter out1 = null;
		try {
			in2 = new BufferedReader(new StringReader(data));
			 out1 = new PrintWriter(new BufferedWriter(
					new FileWriter("items.json")));
			int lineCount = 1;
			while ((s = in2.readLine()) != null) {
				out1.write(s);
				out1.println(lineCount++ + ": " + data);
			}

			
		} catch (EOFException e) {
			System.err.println("End of stream");
		}finally{
			if(null != out1){
				out1.close();
			}
			if(null != in2){
				in2.close();
			}
		}
		
	}
}
