package reactive.workout.community.dao;

import org.springframework.beans.factory.annotation.Autowired;

import reactive.workout.community.vo.HomeVO;

public class HomeDao {
	public void selectTest2(HomeVO vo) {
		
		System.out.println("BoardDAO 클래스 호출");	
		System.out.println("===== BoardDTO =====");
		System.out.println(vo.getId());
		System.out.println(vo.getPassword());
		System.out.println("=======================");
	}
}
