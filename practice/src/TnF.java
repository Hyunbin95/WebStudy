package practice1;

public class TnF {
	
	private int landsOrWeels[][];
	private int point [];
	private boolean landsResult = false;
	private boolean WellsResult = true; 
	
	public TnF(int a[][], int point[]) {
		
		landsOrWeels = a;
		this.point = point; 
	}
	
	public void tnf() {
		
		int cnt;
		for(int i=0; i<landsOrWeels.length; i=i+1) {
			cnt=0;
			for(int j=0; j<2; j=j+1) {
				if(point[0] <= landsOrWeels[i][j*2] && landsOrWeels[i][j*2] <= point[2]
						&& point[1] <= landsOrWeels[i][j*2+1] && landsOrWeels[i][j*2+1] <= point[3]) {
					cnt += 1;
				}	
			}
			if(cnt == 2) {
				result = true;
				break;
			}
		}
		

	}
	
	
}
