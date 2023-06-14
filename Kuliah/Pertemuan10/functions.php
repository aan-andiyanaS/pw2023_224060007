<?php


function koneksi()
{
  return mysqli_connect('localhost', 'root', '', 'db_ans_univers');
}
