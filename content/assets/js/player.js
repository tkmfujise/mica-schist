document.addEventListener("DOMContentLoaded", () => {
  const audio   = document.querySelector('audio#main-audio')
  const history = document.querySelector('#play-history .container')
  const label   = document.querySelector('#play-history .current')
  const buttons = Array.from(document.querySelectorAll('button.audio-item'))
  const audioWrapperSelector = 'tr.audio-list'
  const playedSrc = []

  const clearPlaying = () => {
    buttons.forEach(btn => btn.dataset.playing = '')
    label.innerText = '--'
  }

  const setCallbacks = (btn) => {
    btn.addEventListener('click', () => play(btn))
  }

  const addHistory = (btn) => {
    if (playedSrc.includes(btn.dataset.src)) return
    playedSrc.push(btn.dataset.src)
    const wrapper = btn.closest(audioWrapperSelector).cloneNode(true)
    const newBtn  = wrapper.querySelector('button')
    setCallbacks(newBtn)
    history.appendChild(wrapper)
    buttons.push(newBtn)
  }

  const showLabel = (btn) => {
    label.innerText = btn.dataset.src
  }

  const play = (btn) => {
    const src = btn.dataset.src

    if (btn.dataset.playing === 'true') {
      audio.pause()
      btn.dataset.playing = ''
      return
    }

    clearPlaying()
    btn.dataset.playing = 'true'
    audio.src = src
    audio.currentTime = 0
    audio.play()
    showLabel(btn)
    addHistory(btn)
  }

  audio.addEventListener('ended', clearPlaying)

  buttons.forEach(btn => setCallbacks(btn))
})
