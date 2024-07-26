import 'package:flutter/material.dart';

import 'package:laravel_quiz/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What is Laravel?',
    [
      'A PHP framework for web application development',
      'A content management system',
      'A JavaScript library',
      'A CSS framework',
    ],
  ),
  QuizQuestion(
    'Which command is used to create a new Laravel project?',
    [
      'laravel new projectname',
      'php artisan create projectname',
      'composer create-project --prefer-dist laravel/laravel projectname',
      'npm install laravel projectname',
    ],
  ),
  QuizQuestion(
    'What is Eloquent in Laravel?',
    [
      'An ORM (Object-Relational Mapping) for Laravel',
      'A database migration tool',
      'A routing tool',
      'A templating engine',
    ],
  ),
  QuizQuestion(
    'Which of the following is the default templating engine used in Laravel?',
    [
      'Blade',
      'Twig',
      'Smarty',
      'Mustache',
    ],
  ),
  QuizQuestion(
    'How can you retrieve all rows from a table using Eloquent in Laravel?',
    [
      'Model::all()',
      'Table::getAll()',
      'DB::table(\'tablename\')->get()',
      'Schema::get(\'tablename\')',
    ],
  ),
  QuizQuestion(
    'What is the purpose of middleware in Laravel?',
    [
      'To handle HTTP requests and responses',
      'To manage database migrations',
      'To provide user authentication',
      'To define routes for the application',
    ],
  ),
  QuizQuestion(
    'Which command is used to run database migrations in Laravel?',
    [
      'php artisan migrate',
      'php artisan db:migrate',
      'php artisan migration:run',
      'php artisan db:update',
    ],
  ),
  QuizQuestion(
    'What is the default location for Laravel\'s configuration files?',
    [
      'config',
      'app/config',
      'resources/config',
      'database/config',
    ],
  ),
  QuizQuestion(
    'Which of the following methods can be used to define a route in Laravel?',
    [
      'Route::get()',
      'Route::create()',
      'Route::new()',
      'Route::make()',
    ],
  ),
  QuizQuestion(
    'How do you define an accessor for an Eloquent model attribute in Laravel?',
    [
      'Method with prefix get and suffix Attribute',
      'Method with prefix fetch and suffix Property',
      'Method with prefix find and suffix Attribute',
      'Method with prefix obtain and suffix Field',
    ],
  ),

];
