document.addEventListener("DOMContentLoaded", () => {
  const selectorName = {
    mainAudio:        'audio#main-audio', 
    historyContainer: '#play-history .container',
    currentLabel:     '#play-history .current',
    audioButton:      'button.audio-item',
    audioList:        '.audio-list',
    shuffleButton:    'button#shuffle-btn',
    audioWrapper:     'tr.audio-list',
  }
  const audio     = document.querySelector(selectorName.mainAudio)
  const history   = document.querySelector(selectorName.historyContainer)
  const label     = document.querySelector(selectorName.currentLabel)
  const buttons   = Array.from(document.querySelectorAll(selectorName.audioButton))
  const audioList = Array.from(document.querySelectorAll(selectorName.audioList))
  const shuffleButton = document.querySelector(selectorName.shuffleButton)
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
    const wrapper = btn.closest(selectorName.audioWrapper).cloneNode(true)
    const newBtn  = wrapper.querySelector('button')
    setCallbacks(newBtn)
    history.prepend(wrapper)
    buttons.push(newBtn)
  }

  const showLabel = (btn) => {
    label.innerText = btn.dataset.path
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


  const shuffleArray = (arr) => {
    for (let i = arr.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1))
      ;[arr[i], arr[j]] = [arr[j], arr[i]]
    }
  }


  const shuffleAndPlay = () => {
    const container = audioList[0].parentElement
    shuffleArray(audioList)
    audioList.forEach(e => container.appendChild(e))
    const btn = audioList[0].querySelector(selectorName.audioButton)
    if (btn) play(btn)
  }


  audio.addEventListener('ended', clearPlaying)
  shuffleButton.addEventListener('click', shuffleAndPlay)

  buttons.forEach(btn => setCallbacks(btn))
})
