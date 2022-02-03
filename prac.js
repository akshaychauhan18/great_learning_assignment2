clicks = [
  { ip: "11.11.11.11", timestamp: "3/11/2020 02:12:32", amount: 6.5 },
  { ip: "11.11.11.11", timestamp: "3/11/2020 02:13:11", amount: 7.25 },
  { ip: "44.44.44.44", timestamp: "3/11/2020 02:13:54", amount: 8.75 },
  { ip: "44.44.44.44", timestamp: "3/11/2020 06:32:42", amount: 5.0 },
  { ip: "11.11.11.11", timestamp: "3/11/2020 06:45:01", amount: 12.0 },
  { ip: "11.11.11.11", timestamp: "3/11/2020 06:59:59", amount: 11.75 },
  { ip: "11.11.11.11", timestamp: "3/11/2020 07:02:54", amount: 4.5 },
  { ip: "33.33.33.33", timestamp: "3/11/2020 07:02:54", amount: 15.75 },
  { ip: "66.66.66.66", timestamp: "3/11/2020 07:02:54", amount: 14.25 },
  { ip: "55.55.55.55", timestamp: "3/11/2020 13:02:40", amount: 8.0 },
  { ip: "44.44.44.44", timestamp: "3/11/2020 13:02:55", amount: 8.0 },
  { ip: "55.55.55.55", timestamp: "3/11/2020 13:33:34", amount: 8.0 },
  { ip: "55.55.55.55", timestamp: "3/11/2020 13:42:24", amount: 8.0 },
  { ip: "55.55.55.55", timestamp: "3/11/2020 13:47:44", amount: 6.25 },
  { ip: "55.55.55.55", timestamp: "3/11/2020 14:02:54", amount: 4.25 },
  { ip: "55.55.55.55", timestamp: "3/11/2020 14:03:04", amount: 5.25 },
  { ip: "55.55.55.55", timestamp: "3/11/2020 15:12:55", amount: 6.25 },
  { ip: "55.55.55.55", timestamp: "3/11/2020 16:22:11", amount: 8.5 },
  { ip: "55.55.55.55", timestamp: "3/11/2020 17:18:19", amount: 11.25 },
  { ip: "55.55.55.55", timestamp: "3/11/2020 18:19:20", amount: 9.0 },
];
// for (var i = 0; i < clicks.length - 1; i++) {
//   var a = [];

//   for (var j = 0; j < clicks.length; j++) {
//     var max = [];
//     if (
//       clicks[i].amount >= clicks[j].amount &&
//       clicks[i].timestamp.split(" ")[1].split(":")[0] ==
//         clicks[j].timestamp.split(" ")[1].split(":")[0]
//     ) {
//       max = clicks[i];
//     }
//     a.push(max);
//   }
//   console.log(a);
// }

console.log("Sorted Array:- ");

sortedClicks = clicks.sort((a, b) => {
  if (a.ip > b.ip) {
    return 1;
  } else if (a.ip < b.ip) {
    return -1;
  } else {
    return 0;
  }
});

console.log(sortedClicks);

console.log("Result Array:- ");
resultClick = sortedClicks.reduce((acc, curr) => {
  if (acc.length === 0) {
    acc.push(curr);
    return acc;
  } else {
    let temp = acc[acc.length - 1];
    if (temp.ip === curr.ip) {
      let tempTime = temp.timestamp.split(" ")[1].split(":")[0];
      let currTime = curr.timestamp.split(" ")[1].split(":")[0];

      if (tempTime === currTime && temp.amount === curr.amount) {
        return acc;
      } else if (tempTime != currTime) {
        acc.push(curr);
        return acc;
      } else if (tempTime === currTime && temp.amount > curr.amount) {
        return acc;
      } else if (tempTime === currTime && temp.amount < curr.amount) {
        acc.pop();
        acc.push(curr);
        return acc;
      }
    } else {
      acc.push(curr);
      return acc;
    }
  }
}, []);

console.log(resultClick);

// count = clicks.reduce((acc, curr) => {
//   if (!acc[curr.ip]) {
//     acc[curr.ip] = 0;
//   }
//   acc[curr.ip] += 1;
//   return acc;
// }, {});
