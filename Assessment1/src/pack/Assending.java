package pack;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.ArrayList;

public class Assending {
	public List<String> sorting (String st) {
		File fileDir = new File(st);
		List listFile;
		try {
			listFile = Arrays.asList(fileDir.list());
		}
		catch(Exception e) {
			String[] ar = {"No Files"};
			listFile = Arrays.asList(ar);
		}
		Collections.sort(listFile);
		return listFile;
	}
}
