function showModal(idModal){
    const modal = document.querySelector(idModal)
    modal.style.display = 'flex'
}

function hideModal(idModal, event){
    if(event.target.className === 'modal'){
            const modal = document.querySelector(idModal)
            modal.style.display = 'none'

    }
}

function closeAllModal(){
    const modais = document.querySelectorAll('.modal')
    modais.forEach(modal => {
        modal.style.display = 'none'

    })
}

async function insert(event){
    event.preventDefault() //para não recarregar a pag
    const formData = new FormData(event.target) 
    const response = await fetch('backend/insert.php', { //fetch: oq faz o js desparar para o backend sem recarregar a pag
        method: 'POST', //await: a resposta do fetch não é automatica por isso o await
        body: formData
    })
    const result = await response.json()
    if(result?.success){
        closeAllModal()
        alert('Seu livro '+result.data.titulo+' foi cadastrado com sucesso!')
        loadProductions()
    }
}

async function loadProductions() {
    const response = await fetch('backend/list.php')
    const result = await response.json()
    if(result?.success){
        const listProductions = document.querySelector('#productions')
        listProductions.innerHTML = ''
        const livros = result.data
        livros.map((book) => { //map é um laço de repeição
            listProductions.innerHTML += `
                <div class="card-book">
                    <a href="livro">
                        <img src="${book.capa}" alt="${book.titulo}">
                    </a>
                    <div>
                        <a href="livro">
                            <h2>${book.titulo}</h2>
                        </a>
                        <div>
                            <p>${book.genero}</p>
                            <img src="assets/img/trash-svgrepo-com.svg" alt="Apagar" onclick="deleteProduction(${book.id})"/>
                            <img src="assets/img/edit-svgrepo-com.svg" alt="Editar" onclick="loadProductionData(${book.id})"/>
                        </div>
                    </div>
                </div>
        `
        })
    }else{
        alert('Erro ao carregar produções')
    }
}

async function deleteProduction(id){
    const response = await fetch('backend/delete.php?id='+id)
    const result = await response.json()
    if(result?.success){
        alert('Seu livro foi deletado com sucesso!')
        loadProductions()
    }

}

async function loadProductionData(id){
    const response = await fetch('backend/get-production-by-id.php?id='+id)
    const result = await response.json()
    if(result?.success){
        showModal('#modal-editar')
        const title = document.querySelector('#modal-editar input[name=title]')
        title.value = result.data.titulo
        const description = document.querySelector('#modal-editar input[name=description]')
        description.value = result.data.sinopse
        const category = document.querySelector('#modal-editar input[name=category]')
        category.value = result.data.genero
        const cover = document.querySelector('#modal-editar input[name=cover]')
        cover.value = result.data.capa
        const classification = document.querySelector('#modal-editar input[name=classification]')
        classification.value = result.data.classificacao
        const id = document.querySelector('#modal-editar input[name=id]')
        id.value = result.data.id
    }

}
async function edit(event){
    event.preventDefault()
    const formData = new FormData(event.target) 
    const response = await fetch('backend/edit.php', { 
        method: 'POST',
        body: formData
    })
    const result = await response.json()
    if(result?.success){
        closeAllModal()
        alert('Seu livro '+result.data.titulo+' foi editado com sucesso!')
        loadProductions()
    }
}

function clearForm(idModal) {
    const title = document.querySelector(`${idModal} input[name=title]`)
    title.value = ''
    const description = document.querySelector(`${idModal} input[name=description]```)
    description.value = ''
    const category = document.querySelector(`${idModal} input[name=category]`)
    category.value = 'result.data.genero'
    const cover = document.querySelector(`${idModal} input[name=cover]`)
    cover.value = ''
    const classification = document.querySelector(`${idModal} input[name=classification]`)
    classification.value = ''
    const id = document.querySelector(`${idModal} input[name=id]`)
    id.value = ''
}