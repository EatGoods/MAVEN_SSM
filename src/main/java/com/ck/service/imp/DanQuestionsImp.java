package com.ck.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ck.entity.DanQuestionsInFor;
import com.ck.service.DanQuestionsService;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.entity.Example;

@Service("danQuestionsService")
@Transactional(readOnly=true)
public class DanQuestionsImp extends BaseServiceImp<DanQuestionsInFor> implements DanQuestionsService {
	
	
	@Resource(name="danQuestionsMapper")
	@Override
	public void setMapper(Mapper<DanQuestionsInFor> mapper) {
		super.setMapper(mapper);
	}

	@Override
	public List<DanQuestionsInFor> findAllDanQuestions() {
		/*条件查询
		Example example=new Example(DanQuestionsInFor.class);
		example.createCriteria().andCondition("列名", value)..
		List<DanQuestionsInFor> li=this.danQuestionsMapper.selectByExample(example);*/
		System.out.println(this.findAll().size());
		return this.findAll();
	}

}
