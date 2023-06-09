package com.example.nhom3_appbandodientu.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.example.nhom3_appbandodientu.R;
import com.example.nhom3_appbandodientu.model.Item;
import com.example.nhom3_appbandodientu.utils.Utils;

import java.text.DecimalFormat;
import java.util.List;

public class ChitietAdapter extends RecyclerView.Adapter<ChitietAdapter.MyViewHolder> {
    Context context;
    List<Item> itemList;

    public ChitietAdapter(Context context, List<Item> itemList) {
        this.context = context;
        this.itemList = itemList;
    }

    @NonNull
    @Override
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_chitiet, parent, false);
        return new MyViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewHolder holder, int position) {
        Item item = itemList.get(position);
        holder.txtten.setText(item.getTensp() + "");
        holder.txtsoluong.setText("Số lượng: " + item.getSoluong());
        DecimalFormat decimalFormat = new DecimalFormat("###,###,###");
        holder.txtgia.setText("Giá: " + decimalFormat.format(item.getGiasp()) + " VNĐ");

        if (item.getHinhanh().contains("http")){
            Glide.with(context).load(item.getHinhanh()).into(holder.imagechitiet);
        } else {
            String hinh = Utils.BASE_URL+"images/"+item.getHinhanh();
            Glide.with(context).load(hinh).into(holder.imagechitiet);
        };
    }

    @Override
    public int getItemCount() {
        return itemList.size();
    }

    public class MyViewHolder extends RecyclerView.ViewHolder {
        ImageView imagechitiet;
        TextView txtten, txtsoluong, txtgia;

        public MyViewHolder(@NonNull View itemView) {
            super(itemView);
            imagechitiet = itemView.findViewById(R.id.item_imgchitiet);
            txtten = itemView.findViewById(R.id.item_tenspchitiet);
            txtsoluong = itemView.findViewById(R.id.item_soluongchitiet);
            txtgia = itemView.findViewById(R.id.item_giachitiet);
        }
    }
}
