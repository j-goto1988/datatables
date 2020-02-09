<!doctype html>
<html>
  <head>
  <meta charset="UTF-8">
  <title>サンプル</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>
  <script type="text/javascript" src="DataTables/datatables.min.js"></script>
  </head>
  <body>  

    <table id="sample_table" border="1">
      <thead>
        <tr>
          <th>名前</th>
          <th>番号</th>
        </tr>
      </thead>
      {foreach $ret as $v}
        <tr>
          <td>{$v.name}</td>
          <td>{$v.number}</td>
        </tr>
      {/foreach}
    </table>

    <script type="text/javascript">
      $(document).ready(function(){
        $("#sample_table").DataTable({
          language: {
            url: "//cdn.datatables.net/plug-ins/3cfcc339e89/i18n/Japanese.json"
          },
          // 件数切替機能 無効
          lengthChange: true,
          // 検索機能 無効
          searching: true,
          // ソート機能 無効
          ordering: false,
          // 情報表示 無効
          info: true,
          // ページング機能 無効
          paging: true
        })
      });
    </script>
  </body>
</html>