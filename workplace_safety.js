const main_video = document.querySelector('.main-video video');
const main_video_title = document.querySelector('.main-video .title');
const video_playlist = document.querySelector('.video-playlist .videos');

let data = [
    {
        'id': 'a1',
        'title': 'Sexual Harassment',
        'name': 'Nazariya _ UN Women _ Sexual Harassment.mp4',
        'duration': '3:42',
    },
    {
        'id': 'a2',
        'title': 'Harassment at the Workplace',
        'name': 'Sexual Harassment at the Workplace - English VO.mp4',
        'duration': '3:32',
    },
    {
        'id': 'a3',
        'title': 'Workplace Safety',
        'name': 'Sexual Harassment in the Workplace.mp4',
        'duration': '2:49',
    },
    
    {
        'id': 'a4',
        'title': 'Workplace Harassment Prevention',
        'name': 'The Sexual Harassment of Women at Workplace Prevention, Prohibition and Redressal Act, 2013.mp4',
        'duration': '3:03',
    },
    {
        'id': 'a5',
        'title': 'TIMES UP PSA on Workplace Sexual Harassment',
        'name': 'TIMES UP PSA on Workplace Sexual Harassment.mp4',
        'duration': '2:50',
    },
    {
        'id': 'a6',
        'title': 'Workplace Bullying',
        'name': 'Workplace bullying.mp4',
        'duration': '1:50',
    },
    {
        'id': 'a7',
        'title': 'Workplace Safety-Sexual Harassment',
        'name': 'Workplace Series  - Sexual Harassment.mp4',
        'duration': '1:10',
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
        main_video.src = 'videos/wrkplace safety/' + match_video.name;
        main_video_title.innerHTML = match_video.title;
    }
});
