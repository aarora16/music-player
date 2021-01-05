const fetch = require("node-fetch")
fetch('https://accounts.spotify.com/api/token', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/x-www-form-urlencoded',
    'Authorization': 'Basic NTc0YWM5MTZhZTc2NDc3NjliNDY2MWZlODlhNTdjOGE6YTkxMGUwZjk5ZGM2NDNiM2JlM2QxZmQ0ZTA4YjZmYzY='
  },
  body: 'grant_type=client_credentials'
})
.then(res => res.json())
.then(data => console.log(data))
