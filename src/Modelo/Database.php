<?php
namespace Modelo;

class Database{

	private $database;

	public function __construct($container)
	{
		$this->database = $container->database;
	}

	// Select from database
	public function noticias(){
		$arr = $this->database->select('noticia', ['titulo','tipo','encabezamiento','cuerpo']);
		return $arr;
	}
}