<template>
    <div>
        <form method="POST" enctype="multipart/form-data" @submit.prevent="submitDomain">
            <div class="form-group">
                <label for="">Select a category</label>
                <select name="" id="" class="form-control" v-model="form.category_id">
                    <option v-for="category in categories" :value="category.id">{{category.categoryName}}</option>
                </select>
            </div>
            <div class="form-group">
                <label for="">Select a subcategory if wish</label>
                <select name="" id="" class="form-control" v-model="form.subcategory_id">
                    <option v-for="subcategory in filterSubcategories" :value="subcategory.id">{{subcategory.subcategoryname}}</option>
                </select>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                <label for="">Email</label>
                <input type="email" name="email" v-model="form.email" :class="{'is-invalid':form.errors.has('email')}" @keydown="form.errors.clear('email')" class="form-control" placeholder="Enter your email address">
                <span class="invalid-feedback" v-show="form.errors.has('email')" v-text="form.errors.get('email')"></span>
            </div>
            <div class="form-group col-md-6">
                <label for="">Enter your domain URL</label>
                <input type="text" v-model="form.url" :class="{'is-invalid':form.errors.has('url')}" @keydown="form.errors.clear('url')"  class="form-control" placeholder="http://your-domain.com">
                <span class="invalid-feedback" v-show="form.errors.has('url')" v-text="form.errors.get('url')"></span>
            </div>
            </div>
            <div class="form-group mb-3">
                <label for="">Enter Image</label>
                <input id="img" type="file" class="form-control-file">
            </div>
            <div class="form-group mb-3">
                <label for="">Title of your Domain</label>
                <input type="text" :class="{'is-invalid':form.errors.has('title')}" @keydown="form.errors.clear('title')" v-model="form.title"  class="form-control">
                <span class="invalid-feedback" v-show="form.errors.has('title')" v-text="form.errors.get('title')"></span>
            </div>
            <div class="form-group mb-3">
                <label for="">Short description</label>
                <input :class="{'is-invalid':form.errors.has('shortdesc')}" @keydown="form.errors.clear('shortdesc')"  v-model="form.shortdesc" type="text" class="form-control"> 
                <span class="invalid-feedback" v-show="form.errors.has('shortdesc')" v-text="form.errors.get('shortdesc')"></span>
            </div>
            <div class="form-group mb-3">
                <label for="">Long description</label>
                 <vue-editor  v-model="form.desc"></vue-editor>
            </div>
            <button type="submit" class="btn btn-success">Submit Your Domain</button>
        </form>
    </div>
</template>
<script>
    export default {
        props:['categories','subcategories'],
          data(){
             return{
                  form: new Form({
                  email:'',
                  title:'',
                  url:'',
                  shortdesc:'',
                  desc:'',
                  category_id:'1',
                  subcategory_id:''
              })
             }
          },
          methods:{
              submitDomain(){
                  let data = new FormData();
                  data.append('title',this.form.title);
                  data.append('email',this.form.email);
                  data.append('url',this.form.url);
                  data.append('shortdesc',this.form.shortdesc);
                  data.append('desc',this.form.desc);
                  data.append('category_id',this.form.category_id);
                  data.append('subcategory_id',this.form.subcategory_id);
                  if(document.getElementById('img').files[0]){data.append('img',document.getElementById('img').files[0])};

                  axios.post('/domain',data)
                  .then( (response)=>{
                      this.form.reset();
                  })
                  .catch(error=>this.form.errors.record(error.response.data));
              }
          },
          computed:{
              filterSubcategories:function(){
                  return this.subcategories.filter((item)=>item.category_id == this.form.category_id);
              }
          }
    }
</script>