<template>
    <div >
        <div v-for="category in this.categories">
            <h3>{{category.categoryName}}</h3>
            <ul>
                <li v-for="subcategory in category.subcategories">{{subcategory.subcategoryname}}</li>
            </ul>
        </div>
        
    </div>
</template>

<script>
    export default {
        props:['categories'],
    }
</script>
