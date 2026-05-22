const observer = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.src = entry.target.dataset.src;
      observer.unobserve(entry.target);
    }
  });
});

window.onload = () => {
  document.querySelectorAll(".lazy-sound").forEach(el => observer.observe(el));
}

