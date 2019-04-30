package practice1;

public class lands {

	public static void main(String[] args) {
		
		int lands1[][] = {{10,0,30,5},{0,30,20,50},{30,30,40,40}};
		int wells1[][] = {{15,15,25,25},{40,10,50,20}};
		
		int lands2[][] = {{0,0,20,10},{10,20,20,40},{30,0,50,20}};
		int wells2[][] = {{20,40,30,50},{30,20,50,30}};
		
		int point1[] = {10,10,30,30};
		int point2[] = {20,30,30,40};
		
		// tnf클래스에 tnf() 메소드는 겹치는 부분이 있으면 true를 리턴 없으면 false를 리턴하는 boolean형 함수
		TnF tnf = new TnF(wells1,point1);
		TnF tnf1 = new TnF(lands1,point1);
		
		boolean well1 = tnf.tnf(); // 
		boolean land1 = tnf1.tnf(); // 
		
		if(land1 == false && well1 == true) {
			System.out.println("point:true");
		}else {
			System.out.println("point:false");
		}
		
		TnF tnf2 = new TnF(wells2,point2);
		TnF tnf3 = new TnF(lands2,point2);
		
		boolean well2 = tnf2.tnf();
		boolean land2 = tnf3.tnf();
		
		if(land2 == false && well2 == true) {
			System.out.println("point:true");
		}else {
			System.out.println("point:false");
		}
		
		
		
	}
}
