const main_video = document.querySelector('.main-video video');
const main_video_title = document.querySelector('.main-video .title');
const video_playlist = document.querySelector('.video-playlist .videos');

let data = [
    {
        'id': 'a1',
        'title': 'MUST-KNOW Safety Tips for Solo Traveling',
        'name': 'MUST-KNOW Safety Tips for Solo Traveling.mp4',
        'duration': '15:38',
    },
    {
        'id': 'a2',
        'title': 'Safety Tips for Women While Boarding Cabs',
        'name': 'Safety Tips for Women While Boarding Cabs.mp4',
        'duration': '1:23',
    },
    {
        'id': 'a3',
        'title': 'Womens Travel Safety Guidance',
        'name': 'Womens Travel Safety Guidance.mp4',
        'duration': '2:09',
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
        main_video.src = 'videos/travel safety/' + match_video.name;
        main_video_title.innerHTML = match_video.title;
    }
});




