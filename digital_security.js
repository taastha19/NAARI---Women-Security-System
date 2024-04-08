const main_video = document.querySelector('.main-video video');
const main_video_title = document.querySelector('.main-video .title');
const video_playlist = document.querySelector('.video-playlist .videos');

let data = [
    {
        'id': 'a1',
        'title': 'What is cyber security',
        'name': 'What is cyber security_.mp4',
        'duration': '2:57',
    },
    {
        'id': 'a2',
        'title': '11 Internet Safety Tips',
        'name': '11 Internet Safety Tips for Your Online Security.mp4',
        'duration': '4:01',
    },
    {
        'id': 'a3',
        'title': 'Being Safe Online',
        'name': 'Being Safe Online.mp4',
        'duration': '4:24',
    },
    
    {
        'id': 'a4',
        'title': 'Cyber Security Awareness-Think before click',
        'name': 'Cyber Security Awareness - Think before click - Funny But Serious.mp4',
        'duration': '1:15',
    },
    {
        'id': 'a5',
        'title': 'Malware & Spear Phishing',
        'name': 'Cyber Security Awareness_ Malware & Spear Phishing.mp4',
        'duration': '3:29',
    },
    {
        'id': 'a6',
        'title': 'Phishing Attack',
        'name': 'Funny Animation Video(Phishing Attack ) _ Pencil animation _ Short animated films.mp4',
        'duration': '1:32',
    },
    {
        'id': 'a7',
        'title': 'Security Awareness-Trojan Horse',
        'name': 'Security Awareness Video_ Trojan Horse.mp4',
        'duration': '2:13',
    },
    {
        'id': 'a8',
        'title': 'Cyber Security _ Dr. Varun Kapoor, IPS _ TEDx',
        'name': 'Cyber Security _ Dr. Varun Kapoor, IPS _ TEDxPCTEBaddowal.mp4',
        'duration': '14:16',
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
        main_video.src = 'videos/cyber_security/' + match_video.name;
        main_video_title.innerHTML = match_video.title;
    }
});




