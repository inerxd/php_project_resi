<?php

use Illuminate\Support\Facades\Route;
use App\Http\controllers\Admin\HomeController;
use App\Http\controllers\Admin\EncuestaController;
use App\Http\controllers\Admin\PreguntaController;
use App\Http\controllers\Admin\SurveyController;
use App\Http\controllers\Admin\PruebaController;



Route::get('/encuesta', [PruebaController::class, 'show']);

Route::get('/home', [HomeController::class, 'index'])->name('admin.home');
Route::get('/chart', [HomeController::class, 'barra']);


Route::get('/admin/create', [EncuestaController::class, 'create'])->name('admin.create');
Route::post('/admin/create', [EncuestaController::class, 'store'])->name('admin.store');
Route::get('/admin/{newsurvey}', [EncuestaController::class, 'show']);
Route::delete('/admin/{newsurvey}', [EncuestaController::class, 'destroy']);

Route::get('/admin/{newsurvey}/pregunta/create', [PreguntaController::class, 'create']);
Route::post('/admin/{newsurvey}/pregunta', [PreguntaController::class, 'store']);
Route::delete('/admin/{newsurvey}/pregunta/{question}', [PreguntaController::class, 'destroy']);

Route::get('/surveys/{newsurvey}-{slug}', [SurveyController::class, 'show']);
Route::post('/surveys/{newsurvey}-{slug}', [SurveyController::class, 'store']);