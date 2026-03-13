const statusEl = document.getElementById('status');
const buttonEl = document.getElementById('checkBtn');

statusEl.textContent = 'Website files loaded successfully.';

buttonEl.addEventListener('click', () => {
  statusEl.textContent = `Check passed at ${new Date().toLocaleTimeString()}`;
});
