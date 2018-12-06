<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\sanpham;
use App\thuonghieu;
use App\chude;
use App\khachhang;
use App\comment;
use App\dondathang;
use App\chitietdonhang;
use App\Cart;
use App\giohang;
use Session;
class PagesController extends Controller
{
	//trang chủ
    public function home(){
    	$sanpham = sanpham::all();
        $giohang = giohang::all();
        $sl = count($giohang);
    	// dd($sanpham);
    	return view('pages.home', compact('sanpham','sl'));
    }

    //trang cửa hàng
    public function shop(){
        $giohang = giohang::all();
        $sl = count($giohang);
        $sanpham = sanpham::paginate(12);
        $thuonghieu = thuonghieu::all();
        return view('pages.shop',compact('thuonghieu','sanpham','sl'));
    }

    //trang giới thiệu
    public function about(){
        
        $giohang = giohang::all();
        $sl = count($giohang);
        // dd($sanpham);
        return view('pages.about', compact('sl'));
    }
    //trang liên hệ
    public function contact(){
        
        $giohang = giohang::all();
        $sl = count($giohang);
        // dd($sanpham);
        return view('pages.contact', compact('sl'));
    }


    // lấy sản phẩm thuộc thuong hieu và chủ đề
    public function getLoaiSP($id_TH,$id_CD)
    {
        $giohang = giohang::all();
        $sl = count($giohang);
        $thuonghieu = thuonghieu::all();
        $sanpham = sanpham::where([
            ['id_TH',$id_TH],
            ['id_CD',$id_CD],
        ])->paginate(8);
        $chude = chude::where([
            ['id_TH',$id_TH],
            ['id_CD',$id_CD],
        ])->first();
        $idTH = $id_TH;
        return view('pages.shop',['sanpham'=>$sanpham,'thuonghieu'=>$thuonghieu,'chude'=>$chude,'idTH'=>$idTH,'sl'=>$sl]);       
    }

    //chi tiết 1 sản phẩm
    public function chitietsanpham($id_CD,$id_SP){
        $giohang = giohang::all();
        $sl = count($giohang);
        $sanpham = sanpham::where('id_SP',$id_SP)->first();
        $sp_tuongtu = sanpham::where([
            ['id_CD',$id_CD],
            ['id_SP','!=',$id_SP],
        ])->paginate(4);
        $comment = comment::where('id_SP',$id_SP)->get();
        $nguoidung = khachhang::all();
        return view('pages.single',['sanpham'=>$sanpham,'sp_tuongtu'=>$sp_tuongtu,'comment'=>$comment,'nguoidung'=>$nguoidung ,'sl'=>$sl]);
        
    }

    
    //tìm kiếm sản phẩm
    public function timkiem(Request $request){
        $giohang = giohang::all();
        $sl = count($giohang);
        $tukhoa = $request->tukhoa;
        $sanpham = sanpham::where('TenSP','like',"%$tukhoa%")->orwhere('GiaSP','like',"%$tukhoa%")->orwhere('GiaSale','like',"%$tukhoa%")->paginate(8);
        return view('pages.search',['sanpham'=>$sanpham,'tukhoa'=>$tukhoa,'sl'=>$sl]);
        
    }

    //trang chi triết giỏ hàng
    public function getCheckout(){
        $giohang = giohang::all();
        $sanpham = sanpham::all();
        $tongtien = 0 ;
        foreach($giohang as $gh)
        {
            $tongtien = $tongtien + $gh->Gia;
        }
        $sl = count($giohang);
        return view('pages.giohang',compact('sl','giohang','sanpham','tongtien'));
    }
    // Giam mot san pham trong gio hang
    public function TruSP($id_sp)
    {   
        $sanpham = sanpham::where('id_SP',$id_sp)->first();
        $giohang = giohang::where('id_SP',$id_sp)->first();
       
        giohang::where('id_SP',$id_sp)->update(['SoLuong'=>$giohang->SoLuong - 1,'Gia'=>$sanpham->GiaSP * ($giohang->SoLuong - 1)]);
        $giohangall = giohang::all();
        $tongtien = 0;
        foreach($giohangall as $gh)
        {
            $tongtien = $tongtien + $gh->Gia;
        }
        $giohang2 = giohang::where('id_SP',$id_sp)->first();
        $Gia = $giohang2->Gia;
        $mang = [$Gia,$tongtien];
        return $mang;
    }
     // Giam mot san pham trong gio hang
    public function CongSP($id_sp)
    {
        $sanpham = sanpham::where('id_SP',$id_sp)->first();
        $giohang = giohang::where('id_SP',$id_sp)->first();
        giohang::where('id_SP',$id_sp)->update(['SoLuong'=>$giohang->SoLuong + 1,'Gia'=>$sanpham->GiaSP * ($giohang->SoLuong + 1)]);
        $giohangall = giohang::all();
        $tongtien = 0;
        foreach($giohangall as $gh)
        {
            $tongtien = $tongtien + $gh->Gia;
        }
        $giohang2 = giohang::where('id_SP',$id_sp)->first();
        $Gia = $giohang2->Gia;
        $mang = [$Gia,$tongtien];
        // return $Gia;
        return $mang;
    }
    //trang đăng nhập
    public function getDangNhap(){
       $giohang = giohang::all();
        $sl = count($giohang);
        return view('pages.dangnhap', compact('sl'));
    }
    public function postDangNhap(){
        $taikhoan = $request->taikhoan;
        $pass = $request->pass;
        $login = khachhang::where([
            [
                'taikhoan',$TenTK
            ],
            [
                'pass',$MatKhau
            ]

        ])->first();
        if(empty($login))
        {
                
              return redirect('dangnhap'); 
        }
        else
        {
            

            return view('home');
        }
    }
    
    //trang đăng kí
    public function getDangki(){
        $giohang = giohang::all();
        $sl = count($giohang);
        return view('pages.dangki',compact('sl'));
    }
    public function postDangki(){
        
        return view('pages.dangki');
    }

    

    //Them mot san pham vao gio hang
    public function themgiohang($id_sp)
    {
        
        $sanpham = sanpham::where('id_SP',$id_sp)->first(); 
        $demhang = giohang::where('id_SP',$id_sp)->get();
        $sl = count($demhang);

        if($sl != 0)
        {
            giohang::where('id_SP',$id_sp)->update(['SoLuong'=>$sl+1,'Gia'=>$sanpham->GiaSP*($sl+1)]);
        }
        else
        {
            $giohang = new giohang;
            $giohang->id_SP = $id_sp;
            $giohang->id_KH = '1';
            $giohang->SoLuong = 1;
            $giohang->Gia = $sanpham->GiaSP;
            $giohang->save();
        }
        return 'Đã thêm vào giỏ hàng!';
    }

    //trnag admin
    public function pageAdmin(){
        return view('admin.home');
    }
}


