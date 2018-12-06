@extends('layout.master')
@section('home')
<!-- đây là nội dung trang -->

  <div class="container"> 
 
    <div class="row"> 
      <div class="col-md-6">
          <!-- general form elements -->
  
        <div class="box-header with-border">
           <h3 class="box-title">Đăng Nhập</h3>
        </div>
        <br>   
        <form action="" method="post" > 
          <div class="form-group">
            <label >Tên Tài Khoản</label>
            <input type="text" name="taikhoan" placeholder="Nhập Tên Đăng Nhập">
          </div>
          <div class="form-group">
            <label >Mật Khẩu</label>
            <input type="password"  name="pass" placeholder="Nhập Mật Khẩu" > 
          </div>
          <button class="btn btn-primary" type="submit"> Đăng Nhập</button> 
         </form> 
  
 
      </div>
    </div>
  </div>
@endsection