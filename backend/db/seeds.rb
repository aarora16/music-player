# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Song.destroy_all
Playlist.destroy_all
User.destroy_all

songs = [
  {
    name: 'All I Want For Christmas Is You',
    artist: 'Mariah Carey',
    album: 'Merry Christmas',
    url: 'lib/songs/Mariah Carey - All I Want For Christmas Is You (Lyrics).mp3',
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
  {
    name: 'Santa Baby',
    artist: 'Kylie Minogue',
    album: 'A Kylie Christmas',
    url: 'https://open.spotify.com/track/0cM5URUqqQTpJWonmdzF1J?si=zqbwBeoDQ4mlahM_1R_9VQ',
    length: ''
  },
  {
    name: "Do They Know It's Christmas? - 1984 Version",
    artist: 'Band Aid',
    album: "Do They Know It's Christmas?",
    url: 'https://open.spotify.com/track/1hvpDAxZPKjKztOc72sv06?si=JKPDcQp9RImy0pcobwts0w',
    length: ''
  },
  {
    name: "Naughty List (with Dixie D'Amelio)",
    artist: 'Liam Payne',
    album: 'Naughty List',
    url: 'https://open.spotify.com/track/2Y0ktCGrGoGcQFXsGztvhi?si=Mfba715ZS5SeXc5WHsNZrw',
    length: ''
  },
  {
    name: "Baby, It's Cold Outside (feat. Meghan Trainer)",
    artist: 'Brett Eldredge',
    album: 'Glow',
    url: 'https://open.spotify.com/track/5Q2P43CJra0uRAogjHyJDK?si=fQMBQ-APTQqECvXZVTe3Jg',
    length: ''
  },
  {
    name: 'Driving Home for Christmas',
    artist: 'Chris Rea',
    album: 'Christmas Songs',
    url: 'https://open.spotify.com/track/3Z3QhZAZpqwZa1phsbQ3JZ?si=N0BrC-O9TXqJIMLcRlHnjg',
    length: ''
  },
  {
    name: 'Take Me Home For Christmas',
    artist: 'Dan + Shay',
    album: 'Take Me Home For Christmas',
    url: 'https://open.spotify.com/track/72HP2M4jjw4t0AIGdEVGEF?si=nds2avVISMi2fWvnfUV9KQ',
    length: ''
  },
  {
    name: "Like It's Christmas",
    artist: 'Jonas Brothers',
    album: "Like It's Christmas",
    url: 'https://open.spotify.com/track/1OjmlSFuzYflWjSMTCyTJv?si=mQiITWj5RSiXIJGgUi-Tmw',
    length: ''
  },
  {
    name: 'The Lighthouse Keeper',
    artist: 'Sam Smith',
    album: 'The Lighthouse Keeper',
    url: 'https://open.spotify.com/track/2WUVQQAsWvScEdBVilRYaR?si=xEqaK0uuT1mTnjTBjziYdw',
    length: ''
  },
  {
    name: 'All I Want (For Christmas)',
    artist: 'Liam Payne',
    album: 'All I Want (For Christmas)',
    url: 'https://open.spotify.com/track/7lbto9KYTHq5V1PetjIMOF?si=HWKpUGMbRWG8pxUe98ICSQ',
    length: ''
  },
  {
    name: 'Make It To Christmas',
    artist: 'Alessia Cara',
    album: 'Make It To Christmas',
    url: 'https://open.spotify.com/track/6RS6rcjnWrdfVuu2U2W2dj?si=HhDsFyaqSLeq1sV_SGdPLw',
    length: ''
  },
  {
    name: 'Christmas (Baby Please Come Home)',
    artist: 'ROZES',
    album: 'A Very ROZES Christmas',
    url: 'https://open.spotify.com/track/2FWKbF1s4s5Z8ZQkyIGNQU?si=plBNoe7-Q2mvoxyx-OZb_g',
    length: ''
  },
  {
    name: 'Last Christmas',
    artist: 'James TW',
    album: 'Last Christmas',
    url: '',
    length: ''
  },
  {
    name: 'Christmas Without You',
    artist: 'Ava Max',
    album: 'Christmas Without You',
    url: '',
    length: ''
  },
  {
    name: 'Santa Baby',
    artist: 'Ariana Grande',
    album: 'Christmas Kisses',
    url: '',
    length: ''
  },
  {
    name: 'Christmas Love',
    artist: 'Justin Bieber',
    album: 'Under The Mistletoe',
    url: '',
    length: ''
  },
  {
    name: 'Last Christmas',
    artist: 'Ariana Grande',
    album: 'Christmas Kisses',
    url: '',
    length: ''
  }
]

songs.each do |song|
  Song.create(name: song[:name], artist: song[:artist], album: song[:album], url: song[:url], length: song[:length])
end

