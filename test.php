<?php
echo "Hello World!";
//��ȡ����
$conn = mysql_connect("127.0.0.1","root","123456");
if(!$conn){
 die("����ʧ��".mysql_error()); // �����sql ��������ô�ͻ����ѵ�
}else{
 echo "���ӳɹ�";
}
//ѡ�����ݿ�
mysql_select_db("huanglw");
//���ñ���
mysql_query("set names utf8");
//����sql
$sql = "select * from lj_book";
$res = mysql_query($sql,$conn);
//���ܷ��ؽ����������
while($row=mysql_fetch_row($res)){
 echo "<br /> $row[1] -- $row[2] -- $row[0]";
}
//�ͷ���Դ
mysql_free_result($res);
mysql_close($conn);  // ���Բ�Ҫ

echo '<br />';
echo '%E6';

echo $_GET['m'];

echo md5('123456789');

?>