<?php
echo "Hello World!";
//获取连接
$conn = mysql_connect("127.0.0.1","root","123456");
if(!$conn){
 die("连接失败".mysql_error()); // 如果是sql 语句错误，那么就会提醒的
}else{
 echo "连接成功";
}
//选择数据库
mysql_select_db("huanglw");
//设置编码
mysql_query("set names utf8");
//发送sql
$sql = "select * from lj_book";
$res = mysql_query($sql,$conn);
//接受返回结果，并处理
while($row=mysql_fetch_row($res)){
 echo "<br /> $row[1] -- $row[2] -- $row[0]";
}
//释放资源
mysql_free_result($res);
mysql_close($conn);  // 可以不要

echo '<br />';
echo '%E6';

echo $_GET['m'];

echo md5('123456789');

?>