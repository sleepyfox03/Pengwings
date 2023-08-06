import { ref, computed } from 'vue'
import { defineStore } from 'pinia'

export const useDataStore = defineStore('data', () => {
  const userLoggedIn = ref(false)
  const userName = ref("")
  const userId = ref(-34)
  const role = ref('guest')
  function reset() {
    userLoggedIn.value  = false
    userId.value = -34
    userName.value  = "guest"

  }
 

  return { userLoggedIn,userName ,userId,reset }
})
