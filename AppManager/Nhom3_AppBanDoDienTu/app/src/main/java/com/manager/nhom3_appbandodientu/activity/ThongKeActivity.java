package com.manager.nhom3_appbandodientu.activity;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.manager.nhom3_appbandodientu.R;
import com.manager.nhom3_appbandodientu.retrofit.ApiBanHang;
import com.manager.nhom3_appbandodientu.retrofit.RetrofitClient;
import com.manager.nhom3_appbandodientu.utils.Utils;
import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.data.PieData;
import com.github.mikephil.charting.data.PieDataSet;
import com.github.mikephil.charting.data.PieEntry;
import com.github.mikephil.charting.formatter.PercentFormatter;
import com.github.mikephil.charting.utils.ColorTemplate;

import java.util.ArrayList;
import java.util.List;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.schedulers.Schedulers;

public class ThongKeActivity extends AppCompatActivity {
    Toolbar toolbar;
    PieChart pieChart;
    ApiBanHang apiBanHang;
    CompositeDisposable compositeDisposable = new CompositeDisposable();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_thong_ke);
        apiBanHang = RetrofitClient.getInstance(Utils.BASE_URL).create(ApiBanHang.class);
        initview();
        ActionToolBar();
        getdataChart();
    }

    private void getdataChart() {
        List<PieEntry> listdata = new ArrayList<>();
        compositeDisposable.add(apiBanHang.getthongke()
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(
                        ThongKeModel -> {
                            if (ThongKeModel.isSuccess()) {
                                for (int i = 0; i < ThongKeModel.getResult().size(); i++) {
                                    String tensp = ThongKeModel.getResult().get(i).getTensp();
                                    int tong = ThongKeModel.getResult().get(i).getTong();
                                    listdata.add(new PieEntry(tong, tensp));
                                }

                                PieDataSet pieDataSet = new PieDataSet(listdata, "Thống kê");
                                pieDataSet.setColors(ColorTemplate.COLORFUL_COLORS);
                                PieData data = new PieData();
                                data.setDataSet(pieDataSet);
                                data.setValueTextSize(20f);
                                data.setValueFormatter(new PercentFormatter(pieChart));


                                pieChart.setCenterTextSize(30);
                                pieChart.setCenterText("Thống kê");
                                pieChart.setCenterTextColor(Color.rgb(50,50,50));
                                pieChart.setData(data);
                                pieChart.animateXY(2000, 2000);
                                pieChart.setUsePercentValues(true);
                                pieChart.getDescription().setEnabled(false);
                                pieChart.invalidate();
                            }
                        },
                        throwable -> {
                            Toast.makeText(getApplicationContext(), "Không kết nối với server", Toast.LENGTH_SHORT).show();
                        }
                ));
    }

    private void initview() {
        toolbar = findViewById(R.id.toolbar);
        pieChart = findViewById(R.id.piechart);
    }

    private void ActionToolBar() {
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        toolbar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
    }

    @Override
    protected void onDestroy() {
        compositeDisposable.clear();
        super.onDestroy();
    }
}