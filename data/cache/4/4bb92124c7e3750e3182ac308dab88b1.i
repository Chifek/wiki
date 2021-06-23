a:9:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:47:"Узнать размер всех таблиц";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:"Запрос выведет размер всех таблиц в базе.";}i:2;i:63;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:138;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:265:"SELECT nspname || '.' || relname AS "relation",
  pg_size_pretty(pg_relation_size(C.oid)) AS "size"
FROM pg_class C
LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
WHERE nspname NOT IN ('pg_catalog', 'information_schema')
ORDER BY pg_relation_size(C.oid) DESC;";}i:2;i:140;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:419;}i:8;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:419;}}