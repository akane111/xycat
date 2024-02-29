<template>
  <div class="front-page-container">
    <div class="front-page">
      <div class="route-button">
        <a href="https://ditu.amap.com/dir?from%5Bname%5D=%E6%88%91%E7%9A%84%E4%BD%8D%E7%BD%AE&from%5Bid%5D
     =dirmyloc&from%5Badcode%5D=510100&from%5Bpoitype%5D=&from%5Blnglat%5D=104.185834%2C30.823198&from%5Bmodxy%5D
     =104.185834%2C30.823198&to%5Bname%5D=西南石油大学成都校区&to%5Blnglat%5D=104.185111%2C30.828194&to%5Bid%5D=B001C7U4HG&to%5Bpoitype%5D=141201&t
     o%5Badcode%5D=510100&to%5Bmodxy%5D=104.182263%2C30.819915&type=car&policy=1" target="_blank">
          <button class="custom-button">查看猫咪点位</button>
        </a>
      </div>
      <div class='map-box'>
        <div class='container' id='container'></div>
      </div>
      <!-- <goods-sourse2 :cgoods="goods" @handleSearch="handleSearch"></goods-sourse2>
    <pagination @item-click="pageClick" :cUrl="url"
      :cTotal="total" :cPageSize="pageSize"></pagination> -->
    </div>
    <div class="right-info">
      <div class="free-btn">
        <img src="../assets/img/fabuxinxi2.png" @click="toPublish">
      </div>
      <div class="top-info">
        <div style="font-size:18px"><strong>近期新增猫咪信息</strong></div>
        <div class="item-info" v-for="(item, index) in goodsTopics" :key="index" @click="handleDetail(item)">
          {{ index + 1 }}、{{ item.title }}</div>
      </div>
    </div>
  </div>
</template>
<script>
import { selectAllPage, selectGoodsPage } from "../api/order";
import GoodsSourse2 from "../components/GoodsSource2.vue";
import Map from '../components/Map.vue';
import AMapLoader from '@amap/amap-jsapi-loader'
import Pagination from "../components/Pagination.vue";
export default {
  data() {
    return {
      map: null,
      currentLocation: null,
      catLocations: [
        { lat: 30.820242, lng: 104.182410, name: '小橘' },
        { lat: 30.828154, lng: 104.186440, name: '小花' },
        { lat: 30.831911, lng: 104.183582, name: '小灰' },
        // 可以继续添加更多猫咪位置信息
      ],
      goods: [],
      goodsTopics: [],
      total: 0,
      pageSize: 30,
      url: "/order/All/",
      searchValue: '',
      goodsCount2: sessionStorage.getItem("/order/All/pageCode")
        ? sessionStorage.getItem("/order/All/pageCode")
        : 1,
    };
  },
  mounted() {
    this.getData()
    this.getTopicData()
  },
  created() {
    this.initMap()
  },
  methods: {
    initMap() {
      // 高德地图key的密钥
      window._AMapSecurityConfig = {
        securityJsCode: '11965e656f804b1e60b7b068484fc9e9' // 密钥 
      }
      AMapLoader.load({
        key: "0658091c70d3fbcec50033504e6174f6",              // 申请好的Web端开发者Key，首次调用 load 时必填
        version: "2.0",   // 指定要加载的 JSAPI 的版本，缺省时默认为 1.4.15
        plugins: [],           // 需要使用的的插件列表，如比例尺'AMap.Scale'等
        AMapUI: {
          // 是否加载 AMapUI，缺省不加载
          version: '1.1', // AMapUI 缺省 1.1
          plugins: [] // 需要加载的 AMapUI ui插件
        },
        Loca: {
          // 是否加载 Loca， 缺省不加载
          version: '2.0.0' // Loca 版本，缺省 1.3.2
        }
      }).then((AMap) => {
        console.log('-----')
        this.map = new AMap.Map('container', {
          viewMode: '2D', // 默认使用 2D 模式，如果希望使用带有俯仰角的 3D 模式，请设置 viewMode: '3D',
          zoom: 17, //初始化地图层级
          center: [104.184819, 30.82815],//初始化地图中心点
        });
        this.catLocations.forEach(cat => {
          const marker = new AMap.Marker({
            position: [cat.lng, cat.lat],
            map: this.map,
            title: cat.name,
            icon: new AMap.Icon({
              size: new AMap.Size(32, 32),
              image: 'https://webapi.amap.com/theme/v1.3/markers/n/mark_b.png',

            }),
          });
        });
        // 在该经纬度的时候添加点标记
        const marker = new AMap.Marker({
          position: [104.184819, 30.82815],
          map: this.map,
          icon: new AMap.Icon({
            size: new AMap.Size(32, 32),
            image: 'https://webapi.amap.com/theme/v1.3/markers/n/mark_r.png',
          }),
        });

        AMap.plugin('AMap.Geolocation', () => {
          const geolocation = new AMap.Geolocation({
            enableHighAccuracy: true,
            timeout: 10000,
          });

          geolocation.getCurrentPosition((status, result) => {
            if (status === 'complete') {
              const { position, formattedAddress } = result;
              this.currentLocation = {
                latitude: position.lat,
                longitude: position.lng,
                address: formattedAddress,
              };

              const marker = new AMap.Marker({
                position: [position.lng, position.lat],
                map: this.map,
                title: formattedAddress,
              });
              this.map.setZoomAndCenter(15, [position.lng, position.lat]);
            } else {
              console.error('Failed to get current location.');
            }
          });
        });
      }).catch(e => {
        console.error(e);
      })
    },

    getRoute() {
      if (!this.currentLocation) {
        console.error('Current location is not available.');
        return;
      }

      const destination = [104.184819, 30.82815];
      AMap.plugin('AMap.Driving', () => {
        const driving = new AMap.Driving({
          map: this.map,
        });

        driving.search(this.currentLocation, destination, (status, result) => {
          if (status === 'complete') {
            console.log('Route retrieved successfully.');
          } else {
            console.error('Failed to retrieve route.');
          }
        });
      });
    },
    getData() {
      this.$store.commit("updateActiveIndex", "1");
      selectAllPage({
        keys: this.searchValue,
        pageNum: this.goodsCount2,
      }).then((res) => {
        if (res.flag == true) {
          this.goods = res.data.list;
          this.total = res.data.total;
        } else {
          // alert(res.data.data);
        }
      });
    },
    getTopicData() {
      selectGoodsPage({
        pageNum: '1',
        keys: ''
      }).then((res) => {
        if (res.flag == true) {
          let tmp = res.data.list;
          tmp.forEach((e, i) => {
            if (i < 10) {
              this.goodsTopics.push(e)
            }
          })
          // this.goods = res.data.list;
          // this.total = res.data.total;
        } else {
          // alert(res.data.data);
        }
      });
    },
    pageClick(item) {
      this.goods = item;
    },
    // 发布信息
    toPublish() {
      if (localStorage.getItem('token')) {
        this.$router.push("/home/addmessage/publishgoods").catch((err) => err);
      } else {
        this.$router.push(`/login`).catch((err) => err);
      }
    },
    handleSearch(val) {
      this.searchValue = val
      this.getData()
    },
    handleDetail(item) {
      this.$store.commit("updateOrderId", item.orderId);
      this.$router.push(`/home/details?orderId=${item.orderId}`).catch((err) => err);
    },

  },
  components: {
    Pagination,
    GoodsSourse2,
    // Map,
  },
};
</script>

<style lang="less" scoped>
.container {
  width: 100%;
  height: 100vh;
  border: 2px solid rgb(234, 236, 236);
  box-shadow: 2px 2px 20px 2px rgb(111, 108, 108);
}

.front-page-container {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  width: 1100px;
  margin: 10px auto;
}

.front-page {
  width: 780px;
  margin: 0 auto;
}

.item-info {
  line-height: 25px;
  cursor: pointer;

  &:hover {
    color: #035D1C;
    text-decoration: underline;
  }
}

.right-info {
  padding: 10px 20px;
  height: 1000px;
  width: 300px;
  min-height: 360px;
  background-color: #fff;

  .free-btn {
    text-align: center;
    cursor: pointer;
  }

  .top-info {
    font-size: 12px;
    margin-top: 20px;
  }
}
</style>