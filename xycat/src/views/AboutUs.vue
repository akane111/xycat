<!-- 关于我们页面 -->
<template>
  <div class="about-container">
    <img src="../assets/logo.jpg" class="logo"/>
    <div class="about-content">
      <div class="item-style">关于西柚猫咪：</div>
      <div class="item-style marginL25">西柚猫咪是由活着就对研发的针对西柚猫咪信息收集管理平台</div>
      <div class="item-style marginL25">
        校园猫咪平台是一个专门为校园内流浪猫提供帮助和关爱的平台。该平台旨在通过志愿者的参与和社会的支持，为校园内的流浪猫提供食物、医疗和安全的居所。
        

      </div>
      <div class="item-style">
        我们具体实现对校园流浪猫的管理，将流浪猫信息录入该平台，以实现对流浪猫疫苗接种、绝育等信息的公示，让学生们“在校撸猫”更放心。
        我们可以控制流浪猫的数量：流浪猫繁殖速度快，会导致数量不断增加，给校园环境和其他动物带来问题。我们对它们进行信息管理，明确哪些流浪猫已经做过绝育，对没有做过绝育的流浪猫由志愿者“逮捕”，这样有效管理校内的流浪猫数量。
        我们通过志愿者招募，吸引更多的学生加入到建设校园环境的队伍中，凝聚更多的爱心人士，共同关注和照顾校园内的流浪猫，让它们得到更好的生活和关爱。同时，也能够引起更多人对于动物保护的关注和行动，共同营造一个更加和谐美好的校园环境。
        该平台便于毕业后离开校园的同学领养学校的流浪猫时，可以更方便直观的看到猫咪信息，包括猫咪的照片、性格描述和健康状况，方便有意愿领养的人们进行选择。
      </div>
   
      <div class="contact-us marginR105" style="margin-top:150px;">联系我们：</div>
      <div class="item-style contact-us">电话：15198007215</div>
      <div class="item-style contact-us marginR50">QQ: 2953334616</div>
    </div>
  </div>
</template>

<style lang="less" scoped>
.about-container{
  width: 1100px;
  background: #fff;
  margin: 10px auto;
  padding: 50px 20px;
  height: 100%;
  display: flex;
  flex-flow: column;
  // justify-content: center;
  align-items: center;
  .logo{
    width: 292px;
    height: 261px;
  }
  .item-style{
    height: 25px;
    line-height: 25px;
  }
  .marginL25{
    margin-left: 25px;
  }
   .marginL25{
    margin-left: 25px;
  }
  .contact-us{
    display: flex;
    justify-content: flex-end;
  }
  .marginR105{
    margin-right: 105px;
  }
  .marginR50{
    margin-right: 30px;
  }
  .about-content{
    margin-top: 50px;
  }
}
</style>
