package service;

import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import model.Contacts;

public class DivisionPage {

	public DivisionPage() {
		// TODO Auto-generated constructor stub
	}

	public static LinkedList viewList(List<Contacts> arrange, int start, int end) {
		if (end > arrange.size())
			end = arrange.size();
		int i;
		LinkedList<Contacts> temp = new LinkedList<Contacts>();
		for (i = start; i < end; i++)
			temp.add(arrange.get(i));
		return temp;
	}

	public static void main(String[] args) {

	}

}
