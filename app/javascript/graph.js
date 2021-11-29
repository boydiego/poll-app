document.addEventListener('turbolinks:load', () => {

    const votes = document.querySelectorAll(".answer-votes");
    const answers = document.querySelectorAll(".answer-title");
  
    let voteArr = [];
    votes.forEach( (vote) => {
      voteArr.push(vote.textContent);
    })
    console.log(voteArr);
  
    let answerArr = [];
    answers.forEach( (answer) => {
      answerArr.push(answer.textContent);
    })
    console.log(answerArr);
  
  
    const ctx = document.getElementById('myChart');
    const myChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: answerArr,
        datasets: [{
          label: '# of Votes',
          data: voteArr,
          borderWidth: 1
        }]
      },
    });
      
  })