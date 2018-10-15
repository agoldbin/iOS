function validateForm() {
    var story  = $("#story").is(':checked');
    var color  = $("#color").is(':checked');
    var siding = $("#siding").is(':checked');
    var sqft   = $("#sqft").val();
    var garage = $("#garage").val();

    alert("Story: " + story);
    alert($("input[name='story']:checked").val());
    alert("Sqft: " + sqft);

    $("input[name='story']:checked").val();
    $("input[name='color']:checked").val();
    $("input[name='siding']:checked").val();
    $("input[name='sqft']").val();
    $("input[name='garage']").val();



    var node = document.createElement("H3");
    var textNode = document.createTextNode("Select ");
    node.appendChild(textNode);

    var node2 = document.createElement("H3");
    var numNode  = document.createTextNode("Enter a number");
    node2.appendChild(numNode);

    if (story == false) {
        document.getElementById("lblStory").appendChild(node);
    } else if (color) {
        document.getElementById("lblColor").appendChild(node);
    } else if (siding) {
        document.getElementById("lblSiding").appendChild(node);
    } else if (isNaN(garage) || garage == null) {
        document.getElementById("garage").appendChild(node2);
    } else if (isNaN(sqft) || sqft == null) {
        document.getElementById("sqft").appendChild(node2);
    } else {
        var valid = new Array(story, color, siding, garage, sqft);
    }
    // alert($("input[name='story']:checked").val());

    story = ($("input[name='story']:checked").val());
    color = ($("input[name='color']:checked").val());
    siding = ($("input[name='siding']:checked").val());
    console.log("valid");
    return true;
}

// function validateForm(sqft, garage) {
//     var radios = [
//         document.getElementsByName("story"),
//         document.getElementsByName("color"),
//         document.getElementsByName("siding"),
//     ]
//     validateNumInput(sqft, garage);
//     validateRadios(radios);
// }
function submitForm() {
    validateForm();
}

// give user estimate based on selections
function calculateTotal() {
    storyOptions  = ["oneStory", "twoStory"];
    colorOptions  = ["blue", "gray", "green", "red", "yellow", "teal", "white", "black"];
    sidingOptions = ["wood", "vinyl", "stucco", "stone", "brick"];
    var sqft      = document.getElementById("sqft").value;
    var garage    = document.getElementById("garage").value;
    var story     = getCheckedRadio(storyOptions, "story_");
    var color     = getCheckedRadio(colorOptions, "color_");
    var siding    = getCheckedRadio(sidingOptions, "siding_");

    validateNumInput(sqft, garage);


    console.log("Story: " + story);
    console.log("Siding: " + siding);

    var [total,pricePerSqft] = calculatePricePerSqft(story, siding);
    var sqftTotal       = 0;
    var GARAGE_VEHILCES = 15000;

    // calculate garage price
    total += (garage * GARAGE_VEHILCES);
    // console.log(total);

    // calculate sqft price
    sqftTotal = pricePerSqft * sqft;
    // console.log(sqft);

    // calculate Total
    total += sqftTotal;
    console.log("The total is $" + total);

    displayEstimate(total);
}



/** function to calculate the price per sqft depending on number of stories and siding
*
*  @param {number} story
*  @param {number} siding
*  @return {number} Returns 2 values. First, the total based on siding selection. Second, the price per sqft
*/
function calculatePricePerSqft(story, siding) {
    var price;
    var total           = 0;
    var ONE_STORY       = 175;
    var TWO_STORY       = 135;
    var SIDING_SQFT     = 10;
    var SIDING_WOOD     = 5000;
    var SIDING_BRICK    = 8000;
    var SIDING_STUCCO   = 6000;
    var SIDING_STONE    = 16000;

    // calculate story
    switch(story) {
        case "oneStory":
            price = 175;
            break;
        case "twoStory":
            price = 135;
            break;
        default:
            console.error("Error occured in house story if statement");
    }

    // calculate siding price
    switch (siding) {
        case "wood":
            price += SIDING_SQFT;
            total += SIDING_WOOD;
            break;
        case "brick":
            price += SIDING_SQFT;
            total += SIDING_BRICK;
            break;
        case "stucco":
            total += SIDING_STUCCO;
            break;
        case "stone":
            total += SIDING_STONE;
            break;
        case "vinyl":
            break;
        default:
            console.log("Error occured in siding if statement");
    }
    return [total, price];
}


/**
 * This function will display the estimate after the form is submitted and hide
 * the form submit button
 *
 * @param {number} total
 */
function displayEstimate(total) {
    var para = document.createElement("h3");
    var node = document.createTextNode("To build your house will cost about $" + total);
    para.appendChild(node);
    document.getElementById("estimateForm").appendChild(para);
    // referenceNode.parentNode.insertAfter('btnSubmit');

}


// reset the form
function clearForm() {
    document.getElementById("estimateForm").reset();
}










/** Validate form text inputs. Must be numbers.
*
*  @param {number} sqft
*  @param {number} garage
*/
// function validateNumInput(sqft, garage) {
//     if (isNaN(sqft) || sqft < 0 || sqft == null) {
//         // add message under sqft (or in box) that number must be entered
//         console.error("err, sqft must be > 0  " + sqft);
//         alert("Square feet must be a NUMBER greater than 0")
//         return false;
//     }
//
//     if (isNaN(garage) || garage < 0) {
//         // add message under garage (or in box) that number must be entered
//         console.error("err, garage must be > 0");
//         alert("Garage size must be a NUMBER greater than 0")
//         return false;
//     }
// }

/**
 *
 */
// function validateRadios(radioName) {
//     for (option = 0; option < radioName.length; option++) {
//         var radios = document.getElementsByName(radioName[option]);
//         var formValid = false;
//
//         var i = 0;
//         while (!formValid && i < radios.length) {
//             if (radios[i].checked) formValid = true;
//             i++;
//         }
//
//         if (!formValid) alert("Must check " + radioName[option] + " option!");
//         return formValid;
//     }
// }

// Determines which siding user has selected. Used to calculate pricePerSqft.
// function getCheckedRadio(options, elementPrefix) {
//     for (var i = 0; i < options.length; i++) {
//         // console.log("on " + options[i]);
//         currentOption = document.getElementById(elementPrefix + options[i]);
//         if (currentOption.checked == false) {
//             console.log("Radio button: " + options[i]);
//             currentOption.parentElement.style.display = "none";
//         } else if (currentOption == null) {
//             alert("Option must be selected");
//             return false;
//         } else {
//             var selected = options[i];
//         }
//     }
//     // if (selected == null) {
//     //     return false;
//     // } else {
//         return selected;
//     // }
// }
