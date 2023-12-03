function incrementalSearchTags() {
  const itemForm = document.getElementById("js_item_form");
  if (itemForm) {
    for (let i = 1; i <= 4; i++) {
      const inputTag = document.getElementById(`item_form_tag_name${i}`);
      let timer;
      inputTag.addEventListener("input", () => {
        clearTimeout(timer);
        timer = setTimeout( () => {
          const keyword = inputTag.value;
          const XHR = new XMLHttpRequest();
          XHR.open("GET", `/tags/search/?keyword=${keyword}`, true);
          XHR.responseType = "json";
          XHR.send();
          XHR.onload = () => {
            const results = document.getElementById(`tag_results_group${i}`);
            results.innerHTML = ""
            if (XHR.response && XHR.response.keyword != ""){
              results.innerHTML = `<div>※既存のタグを使用（クリックして入力）</div>`
              const tags = XHR.response.keyword;
              tags.forEach((tag, i) => {
                const result = document.createElement("span");
                result.setAttribute("class", "tag_search_result");
                result.setAttribute("id", `tag_result${i+1}_id${tag.id}`);
                result.innerHTML = tag.tag_name;
                results.insertAdjacentElement("beforeend", result);
                result.addEventListener("click", () => {
                  inputTag.value = result.textContent;
                  results.innerHTML = ""
                });
              });
            };
          };
        }, 1000);
      });
    };
  };
};

document.addEventListener("turbolinks:load", incrementalSearchTags)
