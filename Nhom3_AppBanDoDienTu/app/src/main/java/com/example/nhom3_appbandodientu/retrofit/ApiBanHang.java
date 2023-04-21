package com.example.nhom3_appbandodientu.retrofit;

import io.reactivex.rxjava3.core.Observable;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;

import com.example.nhom3_appbandodientu.model.DonHangModel;
import com.example.nhom3_appbandodientu.model.LoaiSpModel;
import com.example.nhom3_appbandodientu.model.MessageModel;
import com.example.nhom3_appbandodientu.model.SanPhamMoiModel;
import com.example.nhom3_appbandodientu.model.UserModel;

public interface ApiBanHang {

   // GET DATA
   @GET("getloaisp.php")
   Observable<LoaiSpModel> getLoaiSp();

   @GET("getspmoi.php")
   Observable<SanPhamMoiModel> getSpMoi();

   // POST DATA

   @POST("chitiet.php")
   @FormUrlEncoded
   Observable<SanPhamMoiModel> getSanPham(
           @Field("page") int page,
           @Field("loai") int loai
   );

   @POST("dangki.php")
   @FormUrlEncoded
   Observable<UserModel> dangKi(
           @Field("email") String email,
           @Field("pass") String pass,
           @Field("username") String username,
           @Field("mobile") String mobile
   );

   @POST("dangnhap.php")
   @FormUrlEncoded
   Observable<UserModel> dangNhap(
           @Field("email") String email,
           @Field("pass") String pass
   );

   @POST("reset.php")
   @FormUrlEncoded
   Observable<UserModel> resetPass(
           @Field("email") String email
   );

   @POST("donhang.php")
   @FormUrlEncoded
   Observable<MessageModel> createOrder(
           @Field("email") String email,
           @Field("sdt") String sdt,
           @Field("tongtien") String tongtien,
           @Field("iduser") int iduser,
           @Field("diachi") String diachi,
           @Field("soluong") int soluong,
           @Field("chitiet") String chitiet
   );

   @POST("xemdonhang.php")
   @FormUrlEncoded
   Observable<DonHangModel> xemDonHang(
           @Field("iduser") int id
   );

   @POST("timkiem.php")
   @FormUrlEncoded
   Observable<SanPhamMoiModel> search(
           @Field("search") String search
   );

   @POST("updateZaloPay.php")
   @FormUrlEncoded
   Observable<MessageModel> updateZaloPay(
           @Field("iduser") int id,
           @Field("token") String token
   );

   @POST("cancelorder.php")
   @FormUrlEncoded
   Observable<DonHangModel> cancelDonHang(
           @Field("id") int id,
            @Field("trangthai") int trangthai
   );
}
