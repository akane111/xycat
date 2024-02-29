<template>
  <div class="goods-manager-container">
    <el-menu class="menu-content" style="width:200px;">
      <el-submenu index="4" :default-active="$store.state.userActiveIndex"  style="width:200px;">
        <template slot="title">
          <i class="el-icon-s-order"></i>
          <span>猫咪管理</span>
        </template>
        <el-menu-item-group  style="width:200px;">
          <el-menu-item index="4-1"  style="width:200px;" @click="PublishedGoodsAdminClick">
            <i class="el-icon-s-shop"></i>
            猫咪信息
          </el-menu-item>
          <el-menu-item index="4-2"  style="width:200px;" @click="PublishedNeedsAdminClick">
            <i class="el-icon-s-comment"></i>
            志愿者招募
          </el-menu-item>
        </el-menu-item-group>
      </el-submenu>
    </el-menu>
    <div class="right-content">
      <router-view></router-view>
    </div>
  </div>
</template>

<script>
export default {
  methods:{
    PublishedGoodsAdminClick(){
      this.$router.push("/home/userGood/publishedgoodsAdmin").catch((err) => err);
    },
    PublishedNeedsAdminClick(){
      this.$router.push("/home/userGood/PublishedNeedsAdmin").catch((err) => err);
    }
  },
  created() {
    this.$store.commit("updateUserActiveIndex", "1-1");
  },
}
</script>

<style lang="less" scoped>
.goods-manager-container{
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  width: 1100px;
  margin: 0 auto;
  height: 100%;
  box-sizing: border-box;
  .menu-content{
    width: 200px;
    margin-right: 20px;
  }
  .right-content{
    background: #fff;
    width: 900px;
    // padding: 10px 20px;
  }
}
</style>