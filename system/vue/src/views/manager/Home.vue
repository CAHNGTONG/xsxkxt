<template>
  <div>
    <div class="card" style="line-height: 30px; margin-bottom: 5px">
      <div>欢迎您，{{ data.user.name }} 祝您今天过得开心！</div>
    </div>
    <div style="display: flex">
      <div class="card" style="flex: 50%">
        <div style="font-size: 17px; font-weight: bold; padding: 10px 10px 20px 10px">系统公告</div>
        <el-timeline>
          <el-timeline-item
              v-for="(item, index) in data.noticeData"
              :key="index"
              :timestamp="item.time"
          >
            {{ item.title }}
          </el-timeline-item>
        </el-timeline>
      </div>

      <div class="card" style="flex: 50%; display: flex; justify-content: center; align-items: center;">
        <!-- 根据用户角色显示不同按钮文本 -->
        <el-button @click="goToCourse">{{ getButtonText }}</el-button>
      </div>


    </div>
  </div>
</template>

<script setup>
import { reactive, computed } from "vue";
import request from "@/utils/request";
import { ElMessage } from "element-plus";

const data = reactive({
  user: JSON.parse(localStorage.getItem('system-user') || '{}'),
  noticeData: []
})

const loadNotice = () => {
  request.get('/notice/selectAll').then(res => {
    if (res.code === '200') {
      data.noticeData = res.data
    } else {
      ElMessage.error(res.msg)
    }
  })
}

// 定义点击事件处理函数，跳转到选课界面
const goToCourse = () => {
  window.location.href = 'http://localhost:5173/course';
}

// 新增计算属性，根据用户角色返回按钮文本
const getButtonText = computed(() => {
  const role = data.user.role;
  if (role === 'ADMIN' || role === 'TEACHER') {
    return '查看课程信息';
  }
  return '去选课';
})

loadNotice()
</script>

<style scoped>

</style>