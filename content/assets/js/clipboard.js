document.addEventListener("DOMContentLoaded", () => {
  document.querySelectorAll(".listingblock").forEach(block => {
    const pre = block.querySelector("pre");
    if (!pre) return;

    const button = document.createElement("button");
    button.className = "copy-button";
    button.textContent = "Copy";

    button.addEventListener("click", () => {
      const code = pre.innerText;
      navigator.clipboard.writeText(code).then(() => {
        button.textContent = "Copied!";
        setTimeout(() => (button.textContent = "Copy"), 1200);
      });
    });

    block.appendChild(button);
  });
});
