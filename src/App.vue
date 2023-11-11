<template>
  <div id="app">
    <ul>
      <li v-for="user in users" :key="user.id">
        {{ user.name }}
      </li>
    </ul>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'App',
  data () {
    return {
      users: []
    }
  },
  mounted () {
    console.log('mounted')
    axios.get('http://8.134.220.122:3000/api/users')
      .then(({ data }) => {
        this.users = data

        console.log(this.users)
      })
  }
}
</script>
