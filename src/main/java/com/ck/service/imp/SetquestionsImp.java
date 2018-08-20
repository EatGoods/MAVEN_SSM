package com.ck.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ck.entity.Setquestions;
import com.ck.entity.UserAdmin;
import com.ck.service.SetquestionsService;

import tk.mybatis.mapper.common.Mapper;

@Service
@Transactional(readOnly=true)
public class SetquestionsImp extends BaseServiceImp<Setquestions> implements SetquestionsService {

	@Resource(name="setquestionsMapper")
	@Override
	public void setMapper(Mapper<Setquestions> mapper) {
		super.setMapper(mapper);
	}
	@Override
	public List<Setquestions> findAllSetquestions() {
		List setQuetions=this.findAll();
		return setQuetions;
	}

	@Override
	public void saveSetquestions(Setquestions setquestions) {
		this.save(setquestions);
	}

	@Override
	public void daleteSetquestions(Setquestions setquestions) {
		this.delete(setquestions);
	}

	@Override
	public void updateSetquestions(Setquestions setquestions) {
		this.update(setquestions);
	}

}
