# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
songs = [
  {
    name: 'All I Want For Christmas Is You',
    artist: 'Mariah Carey',
    album: 'Merry Christmas',
    url: 'https://open.spotify.com/track/0bYg9bo50gSsH3LtXe2SQn?si=KCJaiQ5yQoK1cwHeqs3Lhg',
    length: '4:01'
  },
  {
    name: 'Last Christmas',
    artist: 'Wham!',
    album: 'Christmas Hits',
    url: 'https://open.spotify.com/track/0QPYn15U8IQHKcH2LDfrek?si=X4xeFn-eQwOubzLW8ZYdCQ',
    length: '4:26'
  },
  {
    name: 'Santa Tell Me',
    artist: 'Ariana Grande',
    album: 'Santa Tell Me',
    url: 'https://open.spotify.com/track/1ADjWm8QNhgNV8yCNNgQ1T?si=4d4SesTXQy-YSD_yreG9zg',
    length: '3:24'
  },
  {
    name: "Rockin' Around The Christmas Tree",
    artist: 'Brenda Lee',
    album: 'Anthology 1956-1980 (Volume 1&2)',
    url: 'https://open.spotify.com/track/1XBc4r6ltXjkFJBrsttwIF?si=_0qXjB1sSQ2EFQP-lgUGrg',
    length: '2:06'
  },
  {
    name: "It's Beginning to Look a Lot like Christmas",
    artist: 'Michael Buble',
    album: 'Christmas (Deluxe Special Edition)',
    url: 'https://open.spotify.com/track/5a1iz510sv2W9Dt1MvFd5R?si=SDTcrNlyQAKoaQhzJF5crA',
    length: '3:27'
  },
  {
    name: 'Jingle Bell Rock',
    artist: 'Bobby Helms',
    album: 'Four Christmases',
    url: 'https://open.spotify.com/track/2wCPMWR3y4xclijuCcLJv7?si=EiwZyWMkSt-FtAD8Od92Dg',
    length: '2:12'
  },
  {
    name: "It's the Most Wonderful Time of the Year",
    artist: 'Andy Williams',
    album: 'The Andy Williams Christmas Album',
    url: 'https://open.spotify.com/track/5hslUAKq9I9CG2bAulFkHN?si=J7j66-okSS-VFWKa9mOCTQ',
    length: '2:32'
  },
  {
    name: 'Let It Snow, Let It Snow, Let It Snow',
    artist: 'Dean Martin',
    album: 'My Kind Of Christmas',
    url: 'https://open.spotify.com/track/1prYSRBfwPvE3v8jSRZL3Q?si=lJ_E0QGoSIaZ3PMxq8IZiw',
    length: '1:58'
  },
  {
    name: 'Underneath the Tree',
    artist: 'Kelly Clarkson',
    album: 'Wrapped In Red',
    url: 'https://open.spotify.com/track/3nAp4IvdMPPWEH9uuXFFV5?si=rYScsqcdS1aHGg3jOf5hcQ',
    length: '3:50'
  },
  {
    name: 'Sleigh Ride',
    artist: 'The Ronettes',
    album: 'A Christmas Gift For You From Phil Spector',
    url: 'https://open.spotify.com/track/5ASM6Qjiav2xPe7gRkQMsQ?si=WZm9YO_cQ3e3eCDPTwdDzA',
    length: '3:01'
  },
  {
    name: 'Feliz Navidad',
    artist: 'Jose Feliciano',
    album: 'The Definite Best',
    url: 'https://open.spotify.com/track/7taXf5odg9xCAZERYfyOkS?si=3QRhVI5aQU-XYRFqcrll-w',
    length: '3:02'
  },
  {
    name: 'Snowman',
    artist: 'Sia',
    album: 'Everyday Is Christmas (Deluxe Edition)',
    url: 'https://open.spotify.com/track/7uoFMmxln0GPXQ0AcCBXRq?si=4h57bNLZStyr4ssqDC1R7w',
    length: '2:46'
  },
  {
    name: 'Holly Jolly Christmas',
    artist: 'Michael Buble',
    album: 'Christmas (Deluxe Special Edition)',
    url: 'https://open.spotify.com/track/5PuKlCjfEVIXl0ZBp5ZW9g?si=c9i1ywDXReu1Smp0TnlaUg',
    length: '2:00'
  },
  {
    name: 'Mistletoe',
    artist: 'Justin Bieber',
    album: 'Under The Mistletoe (Deluxe Edition)',
    url: 'https://open.spotify.com/track/32OWobmyAz8J2qA8iWekyS?si=xoq2kxsIQOat9ywCkbOMgw',
    length: '3:03'
  },
  {
    name: 'Wonderful Christmastime (Edited Version)',
    artist: 'Paul McCartney',
    album: "Now That's What I Call Christmas",
    url: 'https://open.spotify.com/track/1F8tXdM8cz9bH5PiK1SuAB?si=fxiQBj2qTFiiCf9MuDCqMA',
    length: '3:46'
  },
]

songs.each do |song|
  Song.create(name: song[:name], artist: song[:artist], album: song[:album], url: song[:url], length: song[:length])
end