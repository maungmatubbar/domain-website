<template>
    <div class="w-100 mt-4" >
        <div class="row">
            <div class="col-md-12 p-2">
                <div class="categorybox align-items-center py-1" @click="selectALL()">
                    <h5 class="text-center">Show All Links</h5>
                </div>
            </div>
            <div class="col-md-4 p-2" v-for="category in this.categories">
                <div class="categorybox w-100 align-items-center py-1" @click="selectCategory(category.id)">
                    <h5 class="text-center">{{category.categoryName}}</h5>
                </div>
            </div>
          
            <div class="col-md-4 mt-4 p-2" v-for="subcategory in filterSubCategories">
                <div class="categorybox w-100 align-items-center py-1" @click="selectSubcategory(subcategory.id)">
                    <h5 class="text-center">{{subcategory.subcategoryname}}</h5>
                </div>
            </div>
             <div class="col-md-4 mt-4 p-2" v-for="domain in filterDomains">
               <div class="card">
                   <div class="card-body">
                       <p><strong>Website Name:</strong> {{domain.title}}</p>
                        <p><strong>Website URL:</strong> <a href="domain.url">{{domain.url}}</a></p>
                   </div>
               </div>
            </div>
        </div>

    </div>
</template>

<script>
export default {
    props:['domains','categories','subcategories'],
    data(){
        return{
            selectedcategory:'',
            selectedsubcategory:'',
        }
    },
    methods:{
        selectALL:function(){
            this.selectedcategory = '';
            this.selectedsubcategory = '';
        },
        selectCategory:function(id){
            this.selectedcategory = id;
            this.selectedsubcategory='';
        },
        selectSubcategory(id){
            this.selectedsubcategory = id;
        }
    },
    computed:{
        filterSubCategories:function(){
            return this.subcategories.filter((item)=>item.category_id == this.selectedcategory);
        },
        filterDomains:function(){
            if(this.selectedcategory==='' && this.selectedsubcategory===''){
                return this.domains;
            }
            else if(this.selectedcategory ==='' && this.selectedsubcategory !=''){
                return this.domains.filter((item)=>item.subcategory_id == this.selectedsubcategory);

            }
            else if(this.selectedcategory !='' && this.selectedsubcategory ===''){
                return this.domains.filter((item)=>item.category_id == this.selectedcategory);

            }
            else if(this.selectedcategory!='' && this.selectedsubcategory !=''){
                return this.domains.filter((item)=>item.subcaegory_id == this.selectedsubcategories);

            }
        }
    }
}
</script>

<style>

</style>