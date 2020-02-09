<?php
const DSN = "";
const USER_NAME = "";
const PASS = "";
//smartyの設定は割愛

try {
	$dbh = new PDO(DSN, USER_NAME, PASS);
	$dbh->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	$sql = "SELECT * FROM player";
	$sth = $dbh->prepare($sql);
	$sth->execute();
	$ret = $sth->fetchAll(PDO::FETCH_ASSOC);
	$smarty->assign("ret", $ret);
	$smarty->display("datatables.tpl");
} catch (Exception $e) {
	echo  $e->getMessage();
}

