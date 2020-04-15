<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
        <link rel="stylesheet" type="text/css" href="style/style.css">
        <script language="javascript" src="http://code.jquery.com/jquery-2.0.0.min.js"></script>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAB9Nha9LholFRnrEGCO1u7__OtXHPNQlc&language=vi&libraries=places"></script>

        <script type="text/javascript" src="javascript/loadMap.js"></script>
      
    </head>
    <body>
    <form> 
        <div id="wrap">
        <div id="header">
            <img src="icon/hpt.ico" style="width:50px;height:60px;float:left;margin-left:70px">
            <p align="left" style="color:#fff;background:#2E8B57;margin:20px 0px 0px 0px;font-size:20px;float:left">
            Hospital Maps
            </p>
        </div>
        <!--header-->
        <div id="map_data">
            <div id="left">
                <div id="contenTimDuong">
                    <div id="timduong">
                        <div id="divmenu1"><img src="icon/menu.png" class="icon"></div>
                       <div id="divtxttim"><input type="text" name="maps_address" id="maps_address" value="" placeholder="Tìm kiếm bệnh viện"></div>
                        <div id="divSearch"><img src="icon/search.png" id="searchIcon" class="icon"></div>
                        <div id="divChiDuong"><img src="icon/chiduong.png" class="icon"></div>
                    </div>
                    <div id="groupToaDo">
                        <div id="timDuongTuDiem"><img src="icon/chiduong.png" class="icon"></div>
                        <div id="divtimvitrihientai">
                            <img src="icon/vitrihientai.png" id="vitrihientai" style="width:50px;height:50px" >
                        </div>
                        <div class="centerLatLng">
                            <span class="input-group-addon">L</span>
                            <input type="text" class="form-control" name="maps[maps_mapcenterlat]" id="maps_mapcenterlat" value="" readonly="readonly">
                        </div>
                        <div class="centerLatLng">
                            <span class="input-group-addon">N</span>
                            <input type="text" class="form-control" name="maps[maps_mapcenterlng]" id="maps_mapcenterlng" value="" readonly="readonly">
                        </div>
                        <br/><br/><br/>
                        <strong style="padding-left:15px; font-size:16px">Tìm kiếm lân cận</strong><br/>
                       <div style="margin-left:15px">Tìm trong bán kính:<input type="text" name="" id="radius" value="5" style="width:50px">km</div>
                        <div id="findAll" class="find"><img src="icon/add.png" class="marker" >Tất cả</div>
                        <div id="findPK" class="find"><img src="icon/marker_xanh.png" class="marker" >Phòng khám</div>
                        <div id="findBV" class="find"><img src="icon/marker_do.png" class="marker">Bệnh viện có cấp cứu</div><br/>
                    </div>
                    <div id="searchQuan" style="font-size:13px; clear: left;">
                            <div style="float:left"><strong style="padding-left:15px; font-size:16px">Tìm kiếm nâng cao</strong></div>
                            <div id="arrow_xuong" style="float:left; margin-left:5px"><img src="icon/arrow_xuong.png" style="width: 10px;height: 10px;"></div>
                            <div id="arrow_len" style="float:left;margin-left:5px"><img  src="icon/arrow_len.png" style="width: 10px;height: 10px;"></div>
                            <div id="listQuan" style="clear: left;">
                                <div id="tableQuan" style="width:450px;">
                                    <div style="color:blue;font-size:14px;">Chọn khu vực cần tìm:</div>
                                    <?php  
                                    include_once('connectDB.php');
                                    $query = "SELECT * FROM district";
                                    $result = $mysqli->query($query);
                                    while ($row = $result->fetch_array() ){?>
                                        <span style="float:left; margin-left:3px;width:145px;font-size:13px;"><input type="checkbox" class="findDistrict" 
                                        value="<?php echo ("$row[idDistrict]");?>" /><?php echo ("$row[nameDistrict]");?></span>
                                        <?php
                                    }
                                    ?>
                                </div>
                                <div id="tableKhoa" style="clear:left;">
                                    <div style="color:blue;font-size:14px;">Chọn khoa cần tìm:</div>
                                    <?php  
                                    include_once('connectDB.php');
                                    $query1 = "SELECT * FROM khoa";
                                    $result1 = $mysqli->query($query1);
                                    while ($row = $result1->fetch_array() ){?>
                                        <span style="float:left; margin-left:2px;width:145px;font-size:12px;"><input type="checkbox" class="findKhoa" value="<?php echo ("$row[idKhoa]");?>" /><?php echo ("$row[nameKhoa]");?></span>
                                        <?php
                                    }
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div id="right-panel" style="display:none; position:relative">
                            <h4 style="color:blue;margin:0px">Danh sách bệnh viện <img id="exitPanel" src="icon/dauthoat.png" style="width: 20px;height: 20px;margin-left:250px"></h4>
                            
                            <div id="thongTinChiTiet"></div>
                            <div id="divPlaces"><ul id="places"></ul></div>
                            
                        </div>
                </div>
                <div id="contentChiDuong">
                    <div id="rowphuongtien">
                        <div id="divmenu2" class="phuongtien"><img src="icon/menu.png" class="icon"></div>
                        <div id="iconChiDuong" class="phuongtien" value="chiduong"><img src="icon/chiduong.png" class="icon"></div>
                        <div id="iconOto" class="phuongtien"><img src="icon/oto.png" class="icon"></div>
                        <div id="iconXebus" class="phuongtien"><img src="icon/bus.png" class="icon"></div>
                        <div id="iconDibo" class="phuongtien"><img src="icon/dibo.png" class="icon"></div>
                        <div id="iconXedap" class="phuongtien"><img src="icon/xedap.png" class="icon"></div>
                        <div id="iconMaybay" class="phuongtien" ><img src="icon/maybay.png" class="icon"></div>
                        <div id="thoatChiDuong" style="width: 50px; float:left;"><img src="icon/thoat.png" style="width: 30px;height: 30px; margin-left:20px;"></div>
                        <input type="text" name="" id="start" class="textAB" placeholder="Chọn điểm bắt đầu hoặc nhấp vào bản đồ"><br/>
                        <input type="text" name="" id="end" class="textAB" placeholder="Chọn điểm đến hoặc nhấp vào bản đồ">
                    </div>
                    
                    <div id="huongdan">
                    </div>
                </div>
            </div>
            <div id='menu'>
                <div id="rowMenu"><img id="exitMenu" src="icon/exitMenu.png" style="width: 30px;height: 30px; margin-left:210px;"></div>
            </div>
            <div id="map-canvas"/>
        </div>
        <!--map-->
    </div>
    </form>
    </body>
</html>