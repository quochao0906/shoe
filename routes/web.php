<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

/*Dây là route danh cho nguoi dung*/
//index
Route::get('home','PagesController@home')->name('home');
//about
Route::get('about','PagesController@about');
//contact
Route::get('contact','PagesController@contact');
//shop hiển thị tất cả sản phẩm
Route::get('shop','PagesController@shop');
//shop san pham theo danh muc
Route::get('shop/{id_TH}-{id_CD}','PagesController@getLoaiSP');
// Route::get('shop','PagesController@getLoaiSP');
//single
Route::get('single/{id_TH}-{id_CD}','PagesController@chitietsanpham');
//tìm kiếm sản phẩm
Route::get('search','PagesController@timkiem');
//addtoCart
Route::get('addtocart/{id_TH}','PagesController@AddToCart');
//checkout
Route::get('giohang','PagesController@getCheckout')->name('giohang');
// Them mot san pham vao gio hang
Route::get('themgiohang{id_sp}','PagesController@themgiohang');
// Giam mot san pham trong gio hang
Route::get('tru{id_sp}','PagesController@TruSP');
// tang mot san pham trong gio hang
Route::get('cong{id_sp}','PagesController@CongSP');
// Xoa hang
Route::get('xoahang{id_SP}','PagesController@getXoa');
//dangnhap
Route::get('dangnhap','PagesController@getDangnhap')->name('dangnhap');
Route::post('dangnhap','PagesController@postDangnhap');
//đăng xuất
Route::get('logout','PagesController@getDangxuat')->name('logout');
//dangki
Route::get('dangki','PagesController@getDangki');
Route::post('dangki','PagesController@postDangki');
// Route::get('dangki','PagesController@postDangki');
Route::get('dathang', 'PagesController@getDathang');


/* Đây la phan route danh cho cac trang cua admin*/


Route::get('admin/login','AdminController@getloginAdmin');
Route::post('admin/login','AdminController@postloginAdmin')->name('login');
Route::get('logoutAdmin','AdminController@getLogoutAdmin')->name('logoutadmin');
// các route cho các thu muc trong admin
Route::prefix("admin")->middleware('adminmiddleware')->group( function(){
	Route::get('home','PagesController@pageAdmin');

	Route::group(['prefix'=>'thuonghieu'],function(){
		Route::get('danhsachthuonghieu','ThuongHieuController@getDanhsach')->name('DSThuongHieu');

		Route::get('suathuonghieu/{id_TH}','ThuongHieuController@getSua');
		Route::post('suathuonghieu','ThuongHieuController@postSua')->name('SuaThuongHieu');

		Route::get('themthuonghieu','ThuongHieuController@getThem');
		Route::post('themthuonghieu','ThuongHieuController@postThem');

		Route::get('xemthuonghieu/{id_TH}','ThuongHieuController@getXem');

		Route::get('xoathuonghieu/{id_TH}','ThuongHieuController@getXoa');

		Route::get('timkiem','ThuongHieuController@getTimkiem');

	});

	Route::group(['prefix'=>'chude'],function(){

		Route::get('danhsachchude','ChudeController@getDanhsach')->name('DSchude');

		Route::get('xoachude/{id_CD}','ChudeController@getXoa');
		
		Route::get('themchude','ChudeController@getThem');
		Route::post('themchude','ChudeController@postThem');

		Route::get('suachude/{id_CD}','ChudeController@getSua');
		Route::post('suachude','ChudeController@postSua')->name('SuaChuDe');
	});

	Route::group(['prefix'=>'taikhoan'],function(){

		Route::get('danhsachtaikhoan','AdminController@getDanhsach');

		Route::get('xemadmin/{id_Ad}','AdminController@getXem')->name('XemTaiKhoanAD');

		Route::get('themadmin','AdminController@getThem');
		Route::post('themadmin','AdminController@postThem');

		Route::get('suaadmin/{id_Ad}','AdminController@getSua');
		Route::post('suaadmin','AdminController@postSua')->name('SuaAdmin');

		Route::get('xoaadmin/{id_Ad}','AdminController@getXoa');
			
	});

	Route::group(['prefix'=>'sanpham'],function(){

		Route::get('danhsachsanpham','SanphamController@getDanhsach');

		Route::get('xemsanpham/{id_SP}','SanphamController@getXem');

		Route::get('themsanpham','SanphamController@getThem');
		Route::post('themsanpham','SanphamController@postThem')->name('ThemSanPham');

		Route::get('suasanpham/{id_SP}','SanphamController@getSua');	
		Route::post('suasanpham','SanphamController@postSua')->name('SuaSanPham');

		Route::get('xoasanpham/{id_SP}','SanPhamController@getXoa');
			
	});

	Route::group(['prefix'=>'khachhang'],function(){

		Route::get('danhsachkhachhang','KhachhangController@getDanhsach');

		Route::get('xemkhachhang/{id_KH}','KhachhangController@getXem');

		Route::get('themkhachhang','KhachhangController@getThem');
		Route::post('themkhachhang','KhachhangController@postThem')->name('ThemKhachHang');

		Route::get('suakhachhang/{id_KH}','KhachhangController@getSua');
		Route::post('suakhachhang','KhachhangController@postSua');

		Route::get('xoakhachhang/{id_KH}','KhachhangController@getXoa');
			
	});

	Route::group(['prefix'=>'dondathang'],function(){

		Route::get('danhsachdonhang','DondathangController@getDanhsach');

		Route::get('xemdonhang{id_Bill}','DondathangController@getXem');

		Route::get('giaohang/{id_Bill}','DondathangController@giaohang');
			
	});
	

	
});
