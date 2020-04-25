<template>

    <div class="row">
        <div class="col-12">
            {{event}}
        </div>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                event: []
            }
        },
        created() {
            this.event = Echo.event;

        }
    }
</script>
