document.addEventListener('turbolinks:load', () => {

    const votes = document.querySelectorAll(".answer-votes");
    const answers = document.querySelectorAll(".answer-title");

    let voteArr = [];
    votes.forEach( (vote) => {
        voteArr.push(vote.textContent);
    })

    let answerArr = [];
    answers.forEach( (answer) => {
        answerArr.push(answer.textContent);
    })

    const ctx = document.getElementById('myChart');
    const myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: answerArr,
            datasets: [{
                label: '# of Votes',
                data: voteArr,
                backgroundColor: [
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(255, 205, 86, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(201, 203, 207, 0.2)'
                ],
                borderColor: [
                    'rgba(153, 102, 255)',
                    'rgba(54, 162, 235)',
                    'rgba(75, 192, 192)',
                    'rgba(255, 205, 86)',
                    'rgba(255, 159, 64)',
                    'rgba(255, 99, 132)',
                    'rgba(201, 203, 207)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            indexAxis: 'y',
            scales: {
                x: {
                    ticks: {
                        stepSize: 1
                    }
                }
            }
        }
    });

    const ctx2 = document.getElementById('myChart_2');
    const myChart2 = new Chart(ctx2, {
        type: 'pie',
        data: {
            labels: answerArr,
            datasets: [{
                label: '# of Votes',
                data: voteArr,
                backgroundColor: [
                    'rgba(153, 102, 255, 0.4)',
                    'rgba(54, 162, 235, 0.4)',
                    'rgba(75, 192, 192, 0.4)',
                    'rgba(255, 205, 86, 0.4)',
                    'rgba(255, 159, 64, 0.4)',
                    'rgba(255, 99, 132, 0.4)',
                    'rgba(201, 203, 207, 0.4)'
                ],
                borderWidth: 1
            }]
        },
    });
      
})