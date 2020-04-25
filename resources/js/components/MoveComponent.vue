<template>
  <div class="row">
    <div class="col-12 working-field">
      <VueDragResize
        class="square"
        v-for="(resizeItem , index ) in resizeNew"
        :key="index"
        :w="resizeItem.width"
        :h="resizeItem.height"
        :y="resizeItem.top"
        :x="resizeItem.left"
        v-on:resizing="sendTypingEvent"
        v-on:dragging="sendTypingEvent"
      >
        <h3>{{resizeItem.name}}</h3>
        <p>{{ resizeItem.top }} х {{ resizeItem.left }}</p>
        <p>{{ width }} х {{ resizeItem.height }}</p>
      </VueDragResize>

      <!-- <div class="square" style="transform: translateX(200px);" :data-id="index"></div> -->
    </div>
  </div>
</template>

<script>
import VueDragResize from "vue-drag-resize";
export default {
  name: "table-example",
  components: {
    VueDragResize
  },
  data() {
    return {
      resizeNew: [],
      width: 0,
      height: 0,
      top: 0,
      left: 0
    };
  },
  created() {
    this.fetchMessages();
    Echo.join("move")
      .listen("MoveEvent", event => {
        //   console.log(event.width);
        this.resizeNew = [];
        this.width = event.width;
        this.resizeNew.push({
          width: event.width,
          height: event.height,
          top: event.top,
          left: event.left
        });
      })
      .listenForWhisper("moving", event => {
        this.resizeNew = [];
        this.resizeNew.push({
          width: event.width,
          height: event.height,
          top: event.top,
          left: event.left
        });
      });
  },
  methods: {
    fetchMessages() {
      axios.post("all_users").then(response => {
        console.log(response);
        this.resizeNew = response.data;
      });
    },
    resize(newRect) {
      this.width = newRect.width;
      this.height = newRect.height;
      this.top = newRect.top;
      this.left = newRect.left;

      // axios.post('update', {
      //     width: this.width,
      //     height: this.height,
      //     top: this.top,
      //     left: this.left
      //     });
    },
    sendTypingEvent(newRect) {
      this.width = newRect.width;
      this.height = newRect.height;
      this.top = newRect.top;
      this.left = newRect.left;

      Echo.join("move").whisper("moving", {
        width: newRect.width,
        height: newRect.height,
        top: newRect.top,
        left: newRect.left
      });
    }
    // checkMove: function(e) {
    //   console.log(e);
    //   //   console.log("relatedContext.element " + e.relatedContext.element.id);
    //   //   console.log("draggedContext.index " + e.draggedContext.index);
    //   //   console.log("draggedContext.element " + e.draggedContext.element.id);
    //   axios.post("update", {
    //     from: {
    //       id: e.relatedContext.element.id,
    //       to: e.draggedContext.index + 1,
    //       name: e.draggedContext.element.name
    //     },
    //     to: {
    //       id: e.relatedContext.index,
    //       name: e.relatedContext.element.name,
    //       to: e.draggedContext.element.id
    //     }
    //   });
    // this.fetchMessages();
    // }
  }
};
</script>
<style scoped>
.buttons {
  margin-top: 55px;
}
</style>
