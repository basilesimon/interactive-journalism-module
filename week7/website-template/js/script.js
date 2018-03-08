$(function() {
  var myChart = Highcharts.chart('container', {
    chart: {
      type: 'bar',
    },
    title: {
      text: 'Fruit Consumption',
    },
    xAxis: {
      categories: ['Apples', 'Bananas', 'Oranges'],
    },
    yAxis: {
      title: {
        text: 'Fruit eaten',
      },
    },
    series: [
      {
        name: 'Jane',
        data: [1, 0, 4],
      },
      {
        name: 'John',
        data: [5, 7, 3],
      },
    ],
  });
});

$(function() {
  var scatterChart = Highcharts.chart('scatter', {
    chart: {
      type: 'scatter',
    },
    title: {
      text: 'scatterplot chart',
    },
    xAxis: {
      //categories: ['Apples', 'Bananas', 'Oranges'],
    },
    yAxis: {
      // title: {
      //   text: 'Fruit eaten',
      // },
    },
    series: [
      {
        data: [
          [29.87, 29.87],
          [24.27, 24.27],
          [24.86, 24.86],
          [23.16, 23.16],
          [21.12, 21.12],
          [24.64, 24.64],
          [27.23, 27.23],
          [28.48, 28.48],
          [26.92, 26.92],
          [32.1, 32.1],
          [20.45, 20.45],
          [18.36, 18.36],
          [32.13, 32.13],
          [27.67, 27.67],
          [29.12, 29.12],
          [25.77, 25.77],
          [25.53, 25.53],
          [29.69, 29.69],
          [34.55, 34.55],
          [32.67, 32.67],
          [24.01, 24.01],
          [14.62, 14.62],
          [27.16, 27.16],
          [25.63, 25.63],
          [27.45, 27.45],
        ],
      },
    ],
  });
});
