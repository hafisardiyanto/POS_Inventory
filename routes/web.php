<?php

use App\Http\Controllers\AbsenceController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ItemController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\TransactionController;
use App\Http\Controllers\PaymentMethodController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\Auth\ConfirmablePasswordController;
use App\Http\Controllers\Auth\EmailVerificationNotificationController;
use App\Http\Controllers\Auth\PasswordController;
use App\Http\Middleware\IsSupervisor;
use Illuminate\Support\Facades\Route;


Route::middleware('auth')->group(function () {
    Route::get('/', [DashboardController::class, 'index'])->name('dashboard');

    Route::group(['prefix' => 'inventory'], function () {
        Route::resource('category', CategoryController::class)->except('show');
        Route::resource('supplier', SupplierController::class);
        Route::resource('item', ItemController::class);
    });

    Route::resource('user', UserController::class)->except('show')->middleware(IsSupervisor::class);

    Route::resource('customer', CustomerController::class);
    Route::prefix('report')->group(function () {
        Route::get('/transaction/filter', [ReportController::class, 'filter'])->name('report.transaction.filter');
        Route::resource('transaction', ReportController::class)->names('report.transaction')->only('index', 'show');
    });
    Route::resource('absence', AbsenceController::class)->except('show');
    Route::resource('payment-method', PaymentMethodController::class)->except('show');

    Route::get('/profile', [ProfileController::class, 'show'])->name('profile.show');
    Route::get('/profile/edit', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::put('/profile', [ProfileController::class, 'update'])->name('profile.update');

    Route::prefix('transaction')->group(function () {
    Route::prefix('transaction')->group(function () {
    Route::get('/invoice', [TransactionController::class, 'get_invoice'])
        ->name('transaction.get_invoice');

    Route::get('/items', [TransactionController::class, 'items_html'])
        ->name('transaction.items');

    Route::get('/items-json', [TransactionController::class, 'items_json'])
        ->name('transaction.items_json');

    Route::post('/save', [TransactionController::class, 'save_transaction'])
        ->name('transaction.save');
});
        Route::get('/', [TransactionController::class, 'index'])->name('transaction.index');
        Route::post('/', [TransactionController::class, 'store'])->name('transaction.store');
    });
    Route::prefix('cart')->group(function () {
        Route::get('/', [CartController::class, 'index'])->name('cart.index');
        Route::post('/', [CartController::class, 'store'])->name('cart.store');
        Route::delete('/clear', [CartController::class, 'clear'])->name('cart.clear');
        Route::get('/count-stock/{item}', [CartController::class, 'count_stock']);
        Route::delete('/{cart}', [CartController::class, 'destroy']);
        Route::get('/{item:code}', [ItemController::class, 'show']);
        Route::put('/{cart}', [CartController::class, 'update']);
    });
});

Route::middleware('guest')->group(function () {
    Route::get('/login', [AuthenticatedSessionController::class, 'create'])->name('login');
    Route::post('/login', [AuthenticatedSessionController::class, 'store']);
});

Route::middleware('auth')->group(function () {
    Route::post('email/verification-notification', [EmailVerificationNotificationController::class, 'store'])
        ->middleware('throttle:6,1')
        ->name('verification.send');

    Route::get('confirm-password', [ConfirmablePasswordController::class, 'show'])
        ->name('password.confirm');

    Route::post('confirm-password', [ConfirmablePasswordController::class, 'store']);

    Route::put('password', [PasswordController::class, 'update'])->name('password.update');

    Route::post('logout', [AuthenticatedSessionController::class, 'destroy'])
        ->name('logout');
});