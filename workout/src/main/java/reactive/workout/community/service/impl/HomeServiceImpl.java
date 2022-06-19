package reactive.workout.community.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import reactive.workout.community.dao.HomeDao;
import reactive.workout.community.service.HomeService;
import reactive.workout.community.vo.HomeVO;

@Service
public class HomeServiceImpl implements HomeService{
	@Autowired
	private HomeDao homeDao;
	
	@Override
	public void selectTest2(HomeVO vo) {
		homeDao.selectTest2(vo);
	}

}
