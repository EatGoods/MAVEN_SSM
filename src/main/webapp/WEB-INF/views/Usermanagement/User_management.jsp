<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            用户管理
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="<%= basePath %>resources/css/x-admin.css" media="all">
        <link rel="stylesheet" href="<%= basePath %>resources/css/pag.css" media="all">        
    </head>
    <body>
        <div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>用户管理</cite></a>
            </span>
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
        </div>
        <div class="x-body">
          <form class="layui-form x-center" action="" style="width:85%">
                <div class="layui-form-pane">
                  <div class="layui-form-item">
                    <label class="layui-form-label">编号</label>
                    <div class="layui-input-inline" style="width:100px">
                      <input type="text" name="name"  placeholder="编号" autocomplete="off" class="layui-input">
                    </div>
                    <label class="layui-form-label">姓名</label>
                    <div class="layui-input-inline" style="width:100px">
                      <input type="text" name="name"  placeholder="姓名" autocomplete="off" class="layui-input">
                    </div>
                    <label class="layui-form-label">被测时间</label>
                    <div class="layui-input-inline" style="width:150px">
                      <input type="text" name="name"  placeholder="被测时间" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-input-inline" style="width:200px">
                      <input type="text" name="link"  placeholder="搜索" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-input-inline" style="width:80px">
                        <button class="layui-btn"  lay-submit="" lay-filter="*">搜索</button>
                    </div>
                  </div>
                </div> 
            </form>
            <div class="tools">
    <ul class="toolbar">
      <li><span><img src="<%= basePath %>/resources/images/t03.png" /></span>批量删除</li>
      <li onclick="user_management_add('添加用户','user_management_add.html','600','500')"><span><img src="<%= basePath %>/resources/images/t01.png" /></span>添加</li>
      <li><span><img src="<%= basePath %>/resources/images/t10.png" /></span>导入</li>
      <li><span><img src="<%= basePath %>/resources/images/t09.png" /></span>导出</li>
      <li><span><img src="<%= basePath %>/resources/images/t07.png" /></span>打印</li>
      <li><span><img src="<%= basePath %>/resources/images/t08.png" /></span>审核</li>
    </ul>
    <span class="x-right" style="line-height:25px">共有数据：88 条</span></xblock>
  </div>
            <table class="tablelist">
                <thead>
                    <tr>
                        <th>
                            <input onclick="selectAll()" type="checkbox"   name="controlAll" style="controlAll" id="controlAll">
                        </th>
                        <th>
							 用户ID
                        </th>
                        <th>
							用户名
                        </th>
                        <th>
							 密码
                        </th>
                        <th>
							 用户角色
                        </th>
                        <th>
							 性别
						</th>
                        <th>
                      		注册时间
                        </th>
                        <th>
							状态
                        </th>
                        <th>
                     		操作
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <input type="checkbox" value="1" name="selected">
                        </td>
                        <td>
                            1
                        </td>
                        <td><u style="cursor:pointer" onclick="user_management_show('宋加加','user_management_show.html','10001','360','400')">求大神</u></td>
                        <td >
                        123456</td>
                        <td >
                            用户</td>
                        <td >
                            男</td>
                        <td>
                            2015-07-13 13:13:32
                        </td>
                        <td class="td-status">
                            <button class="sp">已启用</button>
                        </td>
                        <td class="td-manage">
                            <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="停用">
                                <i class="layui-icon">&#xe601;</i>
                            </a>
                            <a title="编辑" href="javascript:;" onclick="user_management_edit('编辑','user_management_edit.html','4','','510')"
                            class="ml-5" style="text-decoration:none">
                                <i class="layui-icon">&#xe642;</i>
                            </a>
                            <a style="text-decoration:none"  onclick="user_management_password('修改密码','user_management_password.html','10001','600','400')"
                            href="javascript:;" title="修改密码">
                                <i class="layui-icon">&#xe631;</i>
                            </a>
                            <a title="删除" href="javascript:;" onclick="member_del(this,'1')" 
                            style="text-decoration:none">
                                <i class="layui-icon">&#xe640;</i>
                            </a>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <input type="checkbox" value="2" name="selected">
                        </td>
                        <td>
                            2</td>
                        <td><u style="cursor:pointer" onclick="user_management_show('宋加加','user_management_show.html','10001','360','400')">张三</u></td>
                        <td >123456</td>
                        <td >
                            用户</td>
                        <td >男</td>
                        <td>2015-07-15 11:11:42</td>
                        <td class="td-status">
                            <button class="sp">已启用</button>
                        </td>
                        <td class="td-manage">
                            <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="停用">
                                <i class="layui-icon">&#xe601;</i>
                            </a>
                            <a title="编辑" href="javascript:;" onclick="user_management_edit('编辑','user_management_edit.html','4','','510')"
                            class="ml-5" style="text-decoration:none">
                                <i class="layui-icon">&#xe642;</i>
                            </a>
                            <a style="text-decoration:none"  onclick="user_management_password('修改密码','user_management_password.html','10001','600','400')"
                            href="javascript:;" title="修改密码">
                                <i class="layui-icon">&#xe631;</i>
                            </a>
                            <a title="删除" href="javascript:;" onclick="member_del(this,'1')" 
                            style="text-decoration:none">
                                <i class="layui-icon">&#xe640;</i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" value="3" name="selected">
                        </td>
                        <td>
                            3</td>
                        <td><u style="cursor:pointer" onclick="user_management_show('宋加加','user_management_show.html','10001','360','400')">李四</u></td>
                        <td >123456</td>
                        <td >
                            用户</td>
                        <td >
                            男</td>
                        <td>2016-09-23 21:12:34</td>
                        <td class="td-status">
                            <button class="sp">已启用</button>
                        </td>
                        <td class="td-manage">
                            <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="停用">
                                <i class="layui-icon">&#xe601;</i>
                            </a>
                            <a title="编辑" href="javascript:;" onclick="user_management_edit('编辑','user_management_edit.html','4','','510')"
                            class="ml-5" style="text-decoration:none">
                                <i class="layui-icon">&#xe642;</i>
                            </a>
                            <a style="text-decoration:none"  onclick="user_management_password('修改密码','user_management_password.html','10001','600','400')"
                            href="javascript:;" title="修改密码">
                                <i class="layui-icon">&#xe631;</i>
                            </a>
                            <a title="删除" href="javascript:;" onclick="member_del(this,'1')" 
                            style="text-decoration:none">
                                <i class="layui-icon">&#xe640;</i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" value="4" name="selected">
                        </td>
                        <td>
                            4</td>
                        <td><u style="cursor:pointer" onclick="user_management_show('宋加加','user_management_show.html','10001','360','400')">丽丽</u></td>
                        <td >123456</td>
                        <td >
                            用户</td>
                        <td >
                            女</td>
                        <td>2017-07-15 11:11:42</td>
                        <td class="td-status">
                            <button class="sp">已启用</button>
                        </td>
                        <td class="td-manage">
                            <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="停用">
                                <i class="layui-icon">&#xe601;</i>
                            </a>
                            <a title="编辑" href="javascript:;" onclick="user_management_edit('编辑','user_management_edit.html','4','','510')"
                            class="ml-5" style="text-decoration:none">
                                <i class="layui-icon">&#xe642;</i>
                            </a>
                            <a style="text-decoration:none"  onclick="user_management_password('修改密码','user_management_password.html','10001','600','400')"
                            href="javascript:;" title="修改密码">
                                <i class="layui-icon">&#xe631;</i>
                            </a>
                            <a title="删除" href="javascript:;" onclick="member_del(this,'1')" 
                            style="text-decoration:none">
                                <i class="layui-icon">&#xe640;</i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" value="5" name="selected">
                        </td>
                        <td>5</td>
                        <td><u style="cursor:pointer" onclick="user_management_show('宋加加','user_management_show.html','10001','360','400')">王五</u></td>
                        <td >
                        123456</td>
                        <td >
                            管理员</td>
                        <td >
                            男</td>
                        <td>
                            2017-07-16 11:34:54</td>
                        <td class="td-status">
                           <button class="sp">已启用</button>
                        </td>
                        <td class="td-manage">
                            <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="停用">
                                <i class="layui-icon">&#xe601;</i>
                            </a>
                            <a title="编辑" href="javascript:;" onclick="user_management_edit('编辑','user_management_edit.html','4','','510')"
                            class="ml-5" style="text-decoration:none">
                                <i class="layui-icon">&#xe642;</i>
                            </a>
                            <a style="text-decoration:none"  onclick="user_management_password('修改密码','user_management_password.html','10001','600','400')"
                            href="javascript:;" title="修改密码">
                                <i class="layui-icon">&#xe631;</i>
                            </a>
                            <a title="删除" href="javascript:;" onclick="member_del(this,'1')" 
                            style="text-decoration:none">
                                <i class="layui-icon">&#xe640;</i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" value="6" name="selected">
                        </td>
                        <td>
                            6
                        </td>
                        <td><u style="cursor:pointer" onclick="user_management_show('宋加加','user_management_show.html','10001','360','400')">赵六</u></td>
                        <td >
                        123456</td>
                        <td >
                            用户</td>
                        <td >
                            男</td>
                        <td>
                            2017-07-16 23:54:54
                        </td>
                        <td class="td-status">
                            <button class="sp">已启用</button>
                        </td>
                        <td class="td-manage">
                            <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="停用">
                                <i class="layui-icon">&#xe601;</i>
                            </a>
                            <a title="编辑" href="javascript:;" onclick="user_management_edit('编辑','user_management_edit.html','4','','510')"
                            class="ml-5" style="text-decoration:none">
                                <i class="layui-icon">&#xe642;</i>
                            </a>
                            <a style="text-decoration:none"  onclick="user_management_password('修改密码','user_management_password.html','10001','600','400')"
                            href="javascript:;" title="修改密码">
                                <i class="layui-icon">&#xe631;</i>
                            </a>
                            <a title="删除" href="javascript:;" onclick="member_del(this,'1')" 
                            style="text-decoration:none">
                                <i class="layui-icon">&#xe640;</i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" value="7" name="selected">
                        </td>
                        <td>
                            7
                        </td>
                        <td><u style="cursor:pointer" onclick="user_management_show('宋加加','user_management_show.html','10001','360','400')">爱丽丝</u></td>
                        <td >
                        123456</td>
                        <td >
                            超级管理员</td>
                        <td >女</td>
                        <td>
                            2017-07-17 18:43:32</td>
                        <td class="td-status">
                            <button class="sp">已启用</button>
                        </td>
                        <td class="td-manage">
                            <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="停用">
                                <i class="layui-icon">&#xe601;</i>
                            </a>
                            <a title="编辑" href="javascript:;" onclick="user_management_edit('编辑','user_management_edit.html','4','','510')"
                            class="ml-5" style="text-decoration:none">
                                <i class="layui-icon">&#xe642;</i>
                            </a>
                            <a style="text-decoration:none"  onclick="user_management_password('修改密码','user_management_password.html','10001','600','400')"
                            href="javascript:;" title="修改密码">
                                <i class="layui-icon">&#xe631;</i>
                            </a>
                            <a title="删除" href="javascript:;" onclick="member_del(this,'1')" 
                            style="text-decoration:none">
                                <i class="layui-icon">&#xe640;</i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" value="8" name="selected">
                        </td>
                        <td>
                            8</td>
                        <td><u style="cursor:pointer" onclick="user_management_show('宋加加','user_management_show.html','10001','360','400')">伊丽莎白</u></td>
                        <td >
                        123456</td>
                        <td >
                            普通用户</td>
                        <td >女</td>
                        <td>
                            2017-07-18 03:43:43
                        </td>
                        <td class="td-status">
                            <button class="sp">已启用</button>
                        </td>
                        <td class="td-manage">
                            <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="停用">
                                <i class="layui-icon">&#xe601;</i>
                            </a>
                            <a title="编辑" href="javascript:;" onclick="user_management_edit('编辑','user_management_edit.html','4','','510')"
                            class="ml-5" style="text-decoration:none">
                                <i class="layui-icon">&#xe642;</i>
                            </a>
                            <a style="text-decoration:none"  onclick="user_management_password('修改密码','user_management_password.html','10001','600','400')"
                            href="javascript:;" title="修改密码">
                                <i class="layui-icon">&#xe631;</i>
                            </a>
                            <a title="删除" href="javascript:;" onclick="member_del(this,'1')" 
                            style="text-decoration:none">
                                <i class="layui-icon">&#xe640;</i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" value="9" name="selected">
                        </td>
                        <td>
                            9
                        </td>
                      <td><u style="cursor:pointer" onclick="user_management_show('宋加加','user_management_show.html','10001','360','400')">小明</u></td>
                        <td >
                        123456</td>
                        <td >用户</td>
                        <td >
                            男</td>
                        <td>
                            2017-07-18 13:34:54
                        </td>
                        <td class="td-status">
                            <button class="sp">已启用</button>
                        </td>
                        <td class="td-manage">
                            <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="停用">
                                <i class="layui-icon">&#xe601;</i>
                            </a>
                            <a title="编辑" href="javascript:;" onclick="user_management_edit('编辑','user_management_edit.html','4','','510')"
                            class="ml-5" style="text-decoration:none">
                                <i class="layui-icon">&#xe642;</i>
                            </a>
                            <a style="text-decoration:none"  onclick="user_management_password('修改密码','user_management_password.html','10001','600','400')"
                            href="javascript:;" title="修改密码">
                                <i class="layui-icon">&#xe631;</i>
                            </a>
                            <a title="删除" href="javascript:;" onclick="member_del(this,'1')" 
                            style="text-decoration:none">
                                <i class="layui-icon">&#xe640;</i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" value="10" name="selected">
                        </td>
                        <td>
                            10
                        </td>
                        <td><u style="cursor:pointer" onclick="user_management_show('宋加加','user_management_show.html','10001','360','400')">张三丰</u></td>
                        <td >
                        123456</td>
                        <td >
                            用户</td>
                        <td >
                            男</td>
                        <td>
                            2017-07-19 11:16:50
                        </td>
                        <td class="td-status">
                            <button class="sp">已启用</button>
                        </td>
                        <td class="td-manage">
                            <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="停用">
                                <i class="layui-icon">&#xe601;</i>
                            </a>
                            <a title="编辑" href="javascript:;" onclick="user_management_edit('编辑','user_management_edit.html','4','','510')"
                            class="ml-5" style="text-decoration:none">
                                <i class="layui-icon">&#xe642;</i>
                            </a>
                            <a style="text-decoration:none"  onclick="user_management_password('修改密码','user_management_password.html','10001','600','400')"
                            href="javascript:;" title="修改密码">
                                <i class="layui-icon">&#xe631;</i>
                            </a>
                            <a title="删除" href="javascript:;" onclick="member_del(this,'1')" 
                            style="text-decoration:none">
                                <i class="layui-icon">&#xe640;</i>
                            </a>
                        </td>
                    </tr>
                </tbody>
            </table>
<div class="page"  v-show="show">
  <div class="pagelist"> <span class="jump">上一页</span> <span class="jump">1</span> <span class="jump">2</span> <span class="jump">3</span> <span class="jump">4</span> <span class="jump">5</span> <span class="jump">6</span> <span class="ellipsis">...</span> <span class="jump">下一页</span> <span class="jumppoint">跳转到：</span> <span class="jumpinp">
    <input type="text">
    </span> <span class="jump gobtn">GO</span> </div>
</div>
</div>
<br />
<br />
<br />
        <script src="./lib/layui/layui.js" charset="utf-8"></script>
        <script src="./js/x-layui.js" charset="utf-8"></script> 
<script src="js/jquery2.js" charset="utf-8"></script> 
<script src="js/js.js" charset="utf-8"></script>
        <script>
            layui.use(['laydate','element','laypage','layer'], function(){
                $ = layui.jquery;//jquery
              lement = layui.element();//面包导航
              laypage = layui.laypage;//分页
              layer = layui.layer;//弹出层

            });

             /*用户-添加*/
            function user_management_add(title,url,w,h){
                x_admin_show(title,url,w,h);
            }
            /*用户-查看*/
            function user_management_show(title,url,id,w,h){
                x_admin_show(title,url,w,h);
            }

             /*用户-停用*/
            function member_stop(obj,id){
                layer.confirm('确认要停用吗？',function(index){
                    //发异步把用户状态进行更改
                    $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="layui-icon">&#xe62f;</i></a>');
                    $(obj).parents("tr").find(".td-status").html('<button class="sp3">已停用</button>');
                    $(obj).remove();
                    layer.msg('已停用!',{icon: 5,time:1000});
                });
            }

            /*用户-启用*/
            function member_start(obj,id){
                layer.confirm('确认要启用吗？',function(index){
                    //发异步把用户状态进行更改
                    $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="layui-icon">&#xe601;</i></a>');
                    $(obj).parents("tr").find(".td-status").html('<button class="sp">已启用</button>');
                    $(obj).remove();
                    layer.msg('已启用!',{icon: 6,time:1000});
                });
            }
            // 用户-编辑
            function user_management_edit (title,url,id,w,h) {
                x_admin_show(title,url,w,h); 
            }
            /*密码-修改*/
            function user_management_password(title,url,id,w,h){
                x_admin_show(title,url,w,h);  
            }
           
	$('.tablelist tbody tr:odd').addClass('odd');
            </script>
    </body>
</html>