function incrementalSearchTags() {
  const itemForm = document.getElementById("item_form_item_name");
  if (itemForm){
    for (let i = 1; i <= 4; i++){
      const inputTag = document.getElementById(`item_form_tag_name_${i}`);
      inputTag.addEventListener("input", () => {
        const keyword = inputTag.value;
        const XHR = new XMLHttpRequest();
        XHR.open("GET", `/tags/search/?keyword=${keyword}`, true);
        XHR.responseType = "json";
        XHR.send();
        XHR.onload = () => {
          const results = document.getElementById(`search_results_${i}`);
          results.innerHTML = ""
          if (XHR.response && XHR.response.keyword != ""){
            results.innerHTML = `<div>※既存のタグを使用（クリックして入力）</div>`
            const tags = XHR.response.keyword;
            tags.forEach((tag) => {
              const result = document.createElement("span");
              result.setAttribute("class", "incremental_search_tags")
              result.setAttribute("id", tag.id);
              result.innerHTML = tag.tag_name;
              results.insertAdjacentElement("beforeend", result);
              result.addEventListener("click", () => {
                inputTag.value = result.textContent;
                results.innerHTML = ""
              });
            });
          };
        };
      });
    };
  };
};

document.addEventListener("DOMContentLoaded", incrementalSearchTags)
