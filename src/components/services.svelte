<script>
  import "../styles/global.css";
  import servers from "../assets/servercluster.svg?url";
  import shield from "../assets/shield.svg?url";
</script>

<div class="mx-auto max-w-7xl py-32">
  <h1 class="pb-6 text-right font-bold underline underline-offset-4">
    What we offer
  </h1>
  <div class="grid grid-flow-col grid-rows-3 gap-4 pb-24">
    <div class="row-span-3 border">
      <img class="mx-auto h-64 w-64" src={servers} alt="server cluster" />
    </div>
    <div class="col-span-2 border">02</div>
    <div class="col-span-2 row-span-2 border">03</div>
  </div>
  <div class="grid grid-flow-col grid-rows-3 gap-4 pb-24">
    <div class="col-span-2 border">02</div>
    <div class="col-span-2 row-span-2 border">03</div>
    <div class="row-span-3 border">
      <img class="mx-auto h-64 w-64" src={shield} alt="shield" />
    </div>
  </div>
  <div class="grid grid-flow-col grid-rows-3 gap-4">
    <div class="row-span-3 border">01</div>
    <div class="col-span-2 border">02</div>
    <div class="col-span-2 row-span-2 border">03</div>
  </div>
</div>
