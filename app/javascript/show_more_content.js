const showMoreContent = (contentWraps, lineNumber) => {
  const lineHeight = parseFloat(getComputedStyle(document.body).lineHeight);
  const collapsedContentHeight = lineHeight * lineNumber;
  for (let i = 0; i < contentWraps.length; i++) {
    const content = contentWraps[i].getElementsByClassName("show_more_content")[0];
    const gradation = contentWraps[i].getElementsByClassName("show_more_gradation")[0];
    const button = contentWraps[i].getElementsByClassName("show_more_button")[0];
    // ブラウザバックした場合に、前回設定した高さが残っているので、高さをリセットする。
    content.style.height = null;
    const expandedContentHeight = content.clientHeight;
    if (expandedContentHeight > collapsedContentHeight) {
      content.style.height = collapsedContentHeight + "px";
      gradation.classList.add("is_visible");
      button.classList.add("is_visible");
      button.textContent = "▼";
      button.addEventListener("click", () => {
        if (gradation.classList.contains("is_visible")) {
          content.style.height = expandedContentHeight + lineHeight * 1.5 + "px";
          gradation.classList.remove("is_visible");
          button.textContent = "▲";
        } else {
          content.style.height = collapsedContentHeight + "px";
          gradation.classList.add("is_visible");
          button.textContent = "▼";
        }
      });
    }
  };
};

document.addEventListener("turbolinks:load", () => {
  const textWraps = document.getElementsByClassName("js_show_more_text");
  const listWraps = document.getElementsByClassName("js_show_more_list");
  const itemWraps = document.getElementsByClassName("js_show_more_item");
  showMoreContent(textWraps, 8)
  showMoreContent(listWraps, 5)
  showMoreContent(itemWraps, 10)
})
