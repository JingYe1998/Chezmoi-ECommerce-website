/*
IIndex頁面Bestselling由Ajax產生
 */
$(document).ready(function () {
    $('#RecommendedItem').empty();
    fetch("http://localhost:8080/Chezmoi/RecommendedItems").then(function (response) {
        return response.json();
    }).then(function (array) {

        alert(value.productId.substring(0, 4))
        $.each(array, function (index, value) {
            alert(123123123123123)
            $('#RecommendedItem')

                .append(
                    '<div class="col-lg-3 col-6 pb-1">' +
                    '\n <div class="card product-item border-0 mb-4">' +
                    '\n <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">' +
                    '\n <img class="img-fluid w-300" style="margin:auto" src="http://localhost:8080/Chezmoi/getMainPic/' + value.photoId + '" style="width: 209px;height:auto">' +
                    '\n <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">' +
                    '\n <a href="http://localhost:8080/Chezmoi/shop/productDetail?series='+  + '">' +
                    '\n <h6 class="text-truncate mb-3">' + value.productName + '</h6>' +
                    '\n <div class="d-flex justify-content-center">' + '<h6 id="saleprice">' + '$' + value.price + '</h6>')
        })
    })
})






