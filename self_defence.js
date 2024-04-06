const main_video = document.querySelector('.main-video video');
const main_video_title = document.querySelector('.main-video .title');
const video_playlist = document.querySelector('.video-playlist .videos');

let data = [
    {
        'id': 'a1',
        'title': '5 things women can use for safety',
        'name': '5 things women can use for safety_ BBC Hindi (1).mp4',
        'duration': '5:24',
    },
    {
        'id': 'a2',
        'title': '7 Self-Defense Techniques for Women from Professionals',
        'name': '7 Self-Defense Techniques for Women from Professionals.mp4',
        'duration': '8:24',
    },
    {
        'id': 'a3',
        'title': 'How to Avoid an Attack If You are Being Followed or Watched',
        'name': 'How to Avoid an Attack If You are Being Followed or Watched.mp4',
        'duration': '8:24',
    },
    {
        'id': 'a4',
        'title': 'If You are Grabbed Suddenly, Do This to Protect Yourself',
        'name': 'If You are Grabbed Suddenly, Do This to Protect Yourself.mp4',
        'duration': '8:18',
    }
];

data.forEach((video, i) => {
    let video_element = `
    <div class="video" data-id="${video.id}">
    <img src="images/play.png" alt="">
    <p>0${i + 1}. </p>
    <h3 class="title">${video.title}</h3>
    <p class="time">${video.duration}</p>
    </div>
    `;
    video_playlist.innerHTML += video_element;
})

let videos = document.querySelectorAll('.video');
videos[0].classList.add('active');
videos[0].querySelector('img').src = 'images/pause.png';

videos.forEach(selected_video => {
    selected_video.onclick = () => {
        for (all_videos of videos) {
            all_videos.classList.remove('active');
            all_videos.querySelector('img').src = 'images/play.png';

        }
        selected_video.classList.add('active');
        selected_video.querySelector('img').src = 'images/pause.png';

        let match_video = data.find(video => video.id == selected_video.dataset.id);
        // console.log(match_video);
        main_video.src = 'videos/self defense/' + match_video.name;
        main_video_title.innerHTML = match_video.title;
    }
});




