a:27:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"PHP Filters";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:"Validating data = Determine if the data is in proper form.";}i:2;i:29;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:87;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:87;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:"Sanitizing data = Remove any illegal character from the data.";}i:2;i:89;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:150;}i:9;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:152;}i:10;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"The PHP Filter Extension";i:1;i:2;i:2;i:152;}i:2;i:152;}i:11;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:152;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:152;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:"PHP filters are used to validate and sanitize external input.";}i:2;i:190;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:251;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:251;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:142:"The PHP filter extension has many of the functions needed for checking user input, and is designed to make data validation easier and quicker.";}i:2;i:253;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:395;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:395;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:84:"The filter_list() function can be used to list what the PHP filter extension offers:";}i:2;i:397;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:481;}i:21;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:483;}i:22;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:7:"Example";i:1;i:3;i:2;i:483;}i:2;i:483;}i:23;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:483;}i:24;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:224:"
<table>
  <tr>
    <td>Filter Name</td>
    <td>Filter ID</td>
  </tr>
  <?php
  foreach (filter_list() as $id =>$filter) {
    echo '<tr><td>' . $filter . '</td><td>' . filter_id($filter) . '</td></tr>';
  }
  ?>
</table>
";i:1;N;i:2;N;}i:2;i:506;}i:25;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:738;}i:26;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:738;}}