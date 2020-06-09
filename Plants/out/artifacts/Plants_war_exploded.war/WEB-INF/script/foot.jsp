<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.2/axios.min.js"></script>
<script>
  function initEvents() {
    onCLickDeletePlantButton();
  }
  function onCLickDeletePlantButton() {
    document.querySelectorAll('button.delete-plant').forEach(buttonHtmlElement => {
      buttonHtmlElement.addEventListener('click', event => {
        let targetButton = event.currentTarget;
        let plantId = targetButton.dataset.id;
        const url = "${pageContext.request.contextPath}/plant/delete?id=" + plantId;
        axios.delete(url)
          .then(() => {
            document.location.reload();
          })
          .catch(err => console.log(err));
      })
    });
  }
  initEvents();
</script>
</body>
</html>
