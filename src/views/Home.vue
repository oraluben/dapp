<template>
  <div class="home">
    {{msg}}
  </div>
</template>

<script>
export default {
  name: 'home',
  data:  () => { return {
    msg: "hello"
  } }
}
</script>
