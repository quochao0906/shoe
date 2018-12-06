@extends('admin.layout.index')
@section('content')
<a href=""><i class="fa  fa-arrow-circle-left"></i>  <br> Trở Về</a>

    <!-- Main content -->
    <section class="content-header">
      <div class="row">
        <!-- left column -->
        <div class="col-md-6">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Sửa Sản Phẩm : </h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form">
              <div class="box-body">
              	<div class="form-group">
                  <label>Thương Hiệu</label>
                  <select class="form-control">
                    <option>option 1</option>
                    <option>option 2</option>
                    <option>option 3</option>
                    <option>option 4</option>
                    <option>option 5</option>
                  </select>
                </div>
                <div class="form-group">
                  <label>Chủ Đề</label>
                  <select class="form-control">
                    <option>option 1</option>
                    <option>option 2</option>
                    <option>option 3</option>
                    <option>option 4</option>
                    <option>option 5</option>
                  </select>
                </div>
                <div class="form-group">
                  <label >Tên Sản Phẩm</label>
                  <input type="" class="form-control" id="" placeholder="Tên Sản Phẩm">
                </div>
                <div class="form-group">
                  <label >Giá Bán</label>
                  <input type="number" class="form-control" id="" placeholder="Giá Bán">
                </div>
				        <div class="form-group">
                  <label >Giá Sale</label>
                  <input type="number" class="form-control" id="" placeholder="Giá Sale">
                </div>
                
                	<div class="box-body pad">
                    <label>Mô tả Sản Phẩm</label>
                    <form>
                      <textarea class="textarea" placeholder="Place some text here"
                                style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                    </form>
                  </div>
            	
                <div class="form-group">
                  <label for="exampleInputFile">Chọn file sản phẩm</label>
                  <input type="file" id="exampleInputFile">
                  <p class="help-block">Example block-level help text here.</p>
                </div>
                
                
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                
                <button type="submit" class="btn btn-primary">Thêm</button>
              </div>
            </form>
          </div>
         </div>
     </div>
    </section>
@endsection