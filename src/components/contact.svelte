<script lang="ts">
  import "../styles/global.css";
</script>

<div class="relative py-16  px-4 mx-auto max-w-screen-md">
  <div class="text-center">
    <h1 class="pb-4 text-4xl tracking-tight font-extrabold text-[#e0e7ff] cyber-glitch" data-text="Contact Us">Contact Us</h1>
    <p class="pb-8  font-light text-center text-[#e0e7ff]">Stuck on a tech problem or curious about our services?  Fill out the form, email us at <span class="text-[#00f0c0]">parktech@protonmail.com</span>, or call us directly at <span class="text-[#00f0c0]">(727)-710-6179</span></p>
  </div>
  <form action="#" class="space-y-8">
  <div>
    <label for="email" class="block pb-2 text-sm font-medium text-[#00f0c0]">Your email</label>
    <input type="email" id="email" class="shadow-sm bg-[#181c22] border border-[#e0e7ff] focus:border-[#00f0c0] outline-none text-[#e0e7ff] text-sm rounded-lg  block w-full p-2.5 " placeholder="neverpanic@uptimelords.com" required>
  </div>
  <div>
    <label for="subject" class="block pb-2 text-sm font-medium text-[#00f0c0]">Subject</label>
    <input type="text" id="subject" class="block p-3 w-full text-sm text-[#e0e7ff] bg-[#181c22] rounded-lg border border-[#e0e7ff] shadow-sm focus:border-[#00f0c0] outline-none" placeholder="Let us know how we can help you" required>
  </div>
  <div >
    <label for="message" class="block pb-2 text-sm font-medium text-[#00f0c0]">Your message</label>
    <textarea id="message" rows="6" class="block p-2.5 w-full text-sm text-[#e0e7ff] bg-[#181c22] rounded-lg shadow-sm border border-[#e0e7ff] focus:border-[#00f0c0] outline-none" placeholder="Give us some details"></textarea>
  </div>
  <button type="submit" class="transform rounded bg-[#ff2a6d] px-8 py-3 font-bold text-[#0a0c12] transition-all duration-300 hover:-translate-y-1 hover:bg-[#ff2a6d]/90">Send Message</button>
  </form>
</div>
