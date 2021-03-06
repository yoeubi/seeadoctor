package kr.co.seeadoctor.join.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.seeadoctor.repository.mapper.UserMapper;
import kr.co.seeadoctor.repository.vo.Hospital;
import kr.co.seeadoctor.repository.vo.User;

@Service("joinService")
public class JoinServiceImpl implements JoinService {
	@Autowired
	private UserMapper umapper;

	@Override
	public void registUser(User user) {
		umapper.insertUser(user);
	}

	@Override
	public int idDuplChk(String id) {
		return umapper.idDuplChk(id);
	}

	@Override
	public List<Hospital> searchHospName(String dutyName) {
		List<Hospital> hList = umapper.searchHospName(dutyName);
		for(Hospital hosp : hList) {
			System.out.println(hosp.getHospitalSeq());
		}
		return umapper.searchHospName(dutyName);
	}

	@Override
	public void registAdmin(User user) {
		umapper.insertAdmin(user);
	}
	
}
