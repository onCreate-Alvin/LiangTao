package utils;

public class pagecontrl {
	public static int max = 10;
	public static int currentpageno = 1;

	public static String getcurrentlimit(int pageno) {
		if (pageno == -1)
			pageno = currentpageno - 1;
		if (pageno == -2)
			pageno = currentpageno + 1;
		if (pageno == 0)
			pageno = 1;
		currentpageno = pageno;
		return "limit " + (pageno - 1) * max + "," + max + "  ";
	}
}
