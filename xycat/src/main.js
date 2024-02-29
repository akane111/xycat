import Vue from 'vue'
import App from './App.vue'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import router from './router'
import store from './store'
import axios from 'axios'
import './less/reset.less'
import preventMultiClick from './utils/preventMultiClick';
import AMap from 'vue-amap';

Vue.use(AMap);
AMap.initAMapApiLoader({
  key: '11965e656f804b1e60b7b068484fc9e9',
  plugin: ['AMap.Marker'],
  v: '1.4.15'
});

Vue.use(preventMultiClick)
Vue.config.productionTip = false
Vue.prototype.axios = axios;
Vue.use(ElementUI)

new Vue({
  router,
  store,

  render: h => h(App)
}).$mount('#app')
