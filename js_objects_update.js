project = {
  committee: ["Stella", "Salma", "Kai"],
  title: "Very Important Project",
  dueDate : "December 14, 2019",
  id: "3284",
  steps: [
    {description: "conduct interviews",
     dueDate: "August 1, 2018"
    },
    {description: "code of conduct",
     dueDate: "January 1, 2018"
    },
    {description: "compile results",
     dueDate: "November 10, 2018"
    },
    {description: "version 1",
     dueDate: "January 15, 2019"
    },
    {description: "revisions",
     dueDate: "March 30, 2019"
    },
    {description: "version 2",
     dueDate: "July 12, 2019"
    },
    {description: "final edit",
     dueDate: "October 1, 2019"
    },
    {description: "final version",
     dueDate: "November 20, 2019"
    },
    {description: "Wrap up",
     dueDate: "December 1, 2019"
    }
  ]
}
function commandFleet(cars){
  for (var number = 0; number < cars.length; number++){
    var action = act(cars[number]);
    var car = number + 1;
    var results = "Car " + car + ": " + action;
    console.log(results);
  }
  console.log("---");
}

// iterate over each 'step'
// insert new key value with a commitee member names
// loop back through names until steps are complete
// iterate through each committee name, loop back through names

function updateTasks(){
  project.steps.forEach(function(step){
    step.person = "Hello");
  })
}
// Update this object so that each step has the name of a committee member associated with it
// (i.e. by adding an additional person property in each step object), and each committee member
// has an equal number of tasks. Avoid typing out the committee members' names elsewhere in your code.
