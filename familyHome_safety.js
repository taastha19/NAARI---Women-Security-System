const main_video = document.querySelector('.main-video video');
const main_video_title = document.querySelector('.main-video .title');
const video_playlist = document.querySelector('.video-playlist .videos');

let data = [
    {
        'id': 'a1',
        'title': 'Friends Can Help Stop Sexual Abuse',
        'name': 'Friends Can Help Stop Sexual Abuse.mp4',
        'duration': '4:45',
    },
    {
        'id': 'a2',
        'title': 'Child sexual abuse',
        'name': 'KOMAL   A film on Child Sexual Abuse CSA   English.mp4',
        'duration': '10:00',
    },
    {
        'id': 'a3',
        'title': 'My Grandfather Does Things He Shouldnt',
        'name': 'My Grandfather Does Things He Shouldnt.mp4',
        'duration': '7:49',
    },
    {
        'id': 'a4',
        'title': 'The Protection of Women from Domestic Violence',
        'name': 'The Protection of Women from Domestic Violence Act, 2005.mp4',
        'duration': '3:48',
    },
    {
        'id': 'a5',
        'title': 'Sexual Abuse in the Family',
        'name': 'Sexual Abuse in the Family.mp4',
        'duration': '4:46',
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
        main_video.src = 'videos/at_home/' + match_video.name;
        main_video_title.innerHTML = match_video.title;
    }
});