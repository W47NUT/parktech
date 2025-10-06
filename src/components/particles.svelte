<script>
      // Simple particles effect
      document.addEventListener('DOMContentLoaded', function() {
        const particlesContainer = document.getElementById('particles');

        for (let i = 0; i < 100; i++) {
          const particle = document.createElement('div');

          // Random position
          const x = Math.random() * 100;
          const y = Math.random() * 100;

          // Random size
          const size = Math.random() * 3 + 1;

          // Random color (cyber-accent or cyber-accentAlt)
          const color = Math.random() > 0.5 ? '#00f0c0' : '#ff2a6d';

          // Random opacity
          const opacity = Math.random() * 0.5 + 0.1;

          // Random animation duration
          const duration = Math.random() * 50 + 20;

          particle.style.position = 'absolute';
          particle.style.left = `${x}%`;
          particle.style.top = `${y}%`;
          particle.style.width = `${size}px`;
          particle.style.height = `${size}px`;
          particle.style.backgroundColor = color;
          particle.style.borderRadius = '50%';
          particle.style.opacity = opacity;
          particle.style.boxShadow = `0 0 ${size * 2}px ${color}`;
          particle.style.animation = `float ${duration}s infinite linear`;

          particlesContainer.appendChild(particle);
        }

        // Add animation keyframes
        const style = document.createElement('style');
        style.textContent = `
          @keyframes float {
            0% { transform: translate(0, 0); }
            25% { transform: translate(${Math.random() * 100 - 50}px, ${Math.random() * 100 - 50}px); }
            50% { transform: translate(${Math.random() * 100 - 50}px, ${Math.random() * 100 - 50}px); }
            75% { transform: translate(${Math.random() * 100 - 50}px, ${Math.random() * 100 - 50}px); }
            100% { transform: translate(0, 0); }
          }
        `;
        document.head.appendChild(style);

        // Typewriter effect for terminal text
        const typewriterElements = document.querySelectorAll('.typewriter');
        typewriterElements.forEach(element => {
          const text = element.textContent;
          element.textContent = '';

          let i = 0;
          const interval = setInterval(() => {
            if (i < text.length) {
              element.textContent += text.charAt(i);
              i++;
            } else {
              clearInterval(interval);
            }
          }, 100);
        });
      });
    </script>
