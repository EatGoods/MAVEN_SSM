package com.ck.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="CK_DanQuestions")
public class DanQuestionsInFor {
	  @Id
	  private int Id;//题目ID'
	  @Column
	  private int type;//'类型'
	  
	  @Column(name="joinTime")
	  private String joinTime;//'添加时间'
	  
	  @Column(name="taoID")
	  private int taoID;//'所属套题ID'
	  @Column
	  private int res;//'分数'
	  @Column
	  private String subject;//'问题'
	  
	  @Column(name="optionA")
	  private String optionA;//'选项A'
	  
	  @Column(name="optionB")
	  private String optionB;//'选项B'
	  
	  @Column(name="optionC")
	  private String optionC;//'选项C'
	  
	  @Column(name="optionD")
	  private String optionD;//'选项D'
	  @Column
	  private String answer;//'正确答案'
	  @Column
	  private String note;//'备注'
	  
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getJoinTime() {
		return joinTime;
	}
	public void setJoinTime(String joinTime) {
		this.joinTime = joinTime;
	}
	public int getTaoID() {
		return taoID;
	}
	public void setTaoID(int taoID) {
		this.taoID = taoID;
	}
	public int getRes() {
		return res;
	}
	public void setRes(int res) {
		this.res = res;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getOptionA() {
		return optionA;
	}
	public void setOptionA(String optionA) {
		this.optionA = optionA;
	}
	public String getOptionB() {
		return optionB;
	}
	public void setOptionB(String optionB) {
		this.optionB = optionB;
	}
	public String getOptionC() {
		return optionC;
	}
	public void setOptionC(String optionC) {
		this.optionC = optionC;
	}
	public String getOptionD() {
		return optionD;
	}
	public void setOptionD(String optionD) {
		this.optionD = optionD;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	@Override
	public String toString() {
		return "DanQuestionsInFor [Id=" + Id + ", type=" + type + ", joinTime=" + joinTime + ", taoID=" + taoID
				+ ", res=" + res + ", subject=" + subject + ", optionA=" + optionA + ", optionB=" + optionB
				+ ", optionC=" + optionC + ", optionD=" + optionD + ", answer=" + answer + ", note=" + note + "]";
	}
	
	
}
