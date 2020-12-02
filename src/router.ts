import { createRouter, createWebHistory, RouteRecordRaw } from 'vue-router'
import GoMint from '@/pages/gomint.vue'

const routes: Array<RouteRecordRaw> = [
  {
    path: '/',
    name: 'GoMint',
    component: GoMint
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
