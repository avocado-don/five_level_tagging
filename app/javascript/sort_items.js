function dragAndDropSortItems() {
  const link_new_item = $("#link_new_item").length;
  const link_row_order_desc = $("a[href$='row_order+desc']").length;
  if (link_new_item && link_row_order_desc) {
    $(".table_items").sortable({
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
