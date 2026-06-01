document.addEventListener("DOMContentLoaded", () => {
  const selectorName = {
    contents: '.audio-list',
    search:   '.search input[type="search"]',
    count:    '.search-result-count',
  }

  function debounce(fn, delay) {
    let timer
    return (...args) => {
      clearTimeout(timer)
      timer = setTimeout(() => fn(...args), delay)
    }
  }


  const contents = Array.from(document.querySelectorAll(selectorName.contents))
  const generateFuseItems = (elements) => {
      return elements.map(e => {
        return {
          path:   e.querySelector('button').dataset.path,
          target: e,
        }   
      })
    }

  const newFuse = (elements) => {
      return new Fuse(generateFuseItems(elements), {
        keys: ['path'],
        threshold: 0,
        distance: 0,
        ignoreLocation: true,
      })
    }

  const showCount = () => {
      const length = contents.filter(e => e.style.display == '').length
      const elem = document.querySelector(selectorName.count)
      if (elem) {
        elem.innerText = length.toLocaleString()
      }
    }

  const hideAll = (elements) => {
      elements.forEach(l => l.style.display = 'none')
      showCount()
    }

  const showAll = (elements) => {
      elements.forEach(l => l.style.display = '')
      showCount()
    }

  const search = debounce((query) => {
      if (query) {
        hideAll(contents)

        terms = query.trim().split(/\s+/)
        results = contents
        for (const term of terms) {
          results = newFuse(results).search(term).map(i => i.item.target)
        }
        showAll(results)
      }
      else {
        showAll(contents)
      }
    }, 300)


  const inputField = document.querySelector(selectorName.search)
  if (inputField) {
    inputField.addEventListener('input', (e) => search(e.target.value))
  }

  showCount()
})
