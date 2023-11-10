// 「自作のリスト詳細画面」かつ「作者指定順（昇順）画面」でのみ、アイテムの順番を並び替え・保存できる。
function dragAndDropSortItems() {
  const linkNewItem = $("#js_link_new_item").length;
  const linkRowOrderDesc = $("a[href$='row_order+desc']").length;
  if (linkNewItem && linkRowOrderDesc) {
    $("#js_item_tables").sortable({
      axis: "y",
      update: (e, ui) => {
        let sort_path = ui.item.attr("href");
        let index = ui.item.index();
        $.ajax({
          type: "PUT",
          url: sort_path,
          dataType: "json",
          data: { item: { row_order_position: index } }
        }).done(() => {
          location.reload();
        });
      }
    });
  };
};

$(document).on("turbolinks:load", dragAndDropSortItems)
