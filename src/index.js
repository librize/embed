import riot from 'riot'
import route from 'riot-route'
import fetchJsonp from 'fetch-jsonp'
import './app.tag'

const
  apiServer = 'https://librize.com',
  defaultLimit = 5,
  defaultHeight = 100

route('bookspot/*/latest..', function(bookspot) {
  const
    q = route.query(),
    height = (q.height || defaultHeight) - 10,
    limit = q.limit || defaultLimit,
    url = `${ apiServer }/places/${ bookspot }/place_items.json`
      + `?limit=${ limit }`
      + `&height=${ height }`

  fetchJsonp(url)
    .then(response => response.json())
    .then(books => {
      books = books.map(book => {
        book.hasCover = book.image && book.image != 'no-item-medium-image.jpg'
        return book
      })
      riot.mount('app', { books, height })
    })
})

route.start(true)
