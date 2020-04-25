<template>
  <div class="row">
    <div class="col-12">
      <input
        type="text"
        v-model="text"
        @keyup.enter="sendMessage"
        v-on:keyup.ctrl.67="sendMessage"
        class="form-control"
      />
      <br />
    </div>

    <div class="col-12">
      <ul class="list-unstyled" style="height:300px; overflow-y:scroll" v-chat-scroll>
        <li
          class="message"
          :id=" index "
          v-for="(message, index) in messages"
          :key="index"
        >
        {{ message.user }}   .  -  .   {{ message.body }}  .  -  .  {{ message.cache }}</li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  props: ["user"],
  data() {
    return {
      text: "",
      messages: [
        {
          body: "",
          user: ""
        }
      ],
      mouse_x: "",
      mouse_y: "",
      users: [],
      activeUser: false,
      typingTimer: false
    };
  },
  created() {
    this.users.push(this.user);
    window.Echo.channel("text")
      .listen("MoveEvent", event => {
          console.log(event);
        this.messages.push({
          body: event.text,
        //   user: event.user.name,
        //   cache: event.cache
        });
      });

  },
  methods: {
    sendMessage() {
      axios.post("get-text", { text: this.text, user: this.user.id });
      this.text = "";
    }
  }
};
</script>

<style>
</style>
