<?php

use Slim\App;
use Slim\Http\Uri;
use Slim\Views\Twig;
use Slim\Http\Environment;
use Slim\Views\TwigExtension;
use Medoo\Medoo;

return function (App $app) {
	$container = $app->getContainer();

	/*
	// view renderer
	$container['renderer'] = function ($c) {
		$settings = $c->get('settings')['renderer'];
		return new \Slim\Views\PhpRenderer($settings['template_path']);
	};
	*/

	// Slim twig
	$container['view'] = function ($c) {
		$view = new Twig('./templates');
		$router = $c->get('router');
		$uri = Uri::createFromEnvironment(new Environment($_SERVER));
		$view->addExtension(new TwigExtension($router, $uri));

		return $view;
	};
	
	// Medoo Database
	$container['database'] = function () {
		return new Medoo([
			'database_type' => 'mysql',
			'database_name' => 'vaiovaio',
			'server' => 'localhost:3306',
			'username' => 'root',
			'password' => '',
			'charset' => 'utf8'
		]); 
	};

	// monolog
	$container['logger'] = function ($c) {
		$settings = $c->get('settings')['logger'];
		$logger = new \Monolog\Logger($settings['name']);
		$logger->pushProcessor(new \Monolog\Processor\UidProcessor());
		$logger->pushHandler(new \Monolog\Handler\StreamHandler($settings['path'], $settings['level']));
		return $logger;
	};
};
