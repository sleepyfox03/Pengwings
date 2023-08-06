<script>
import axios from 'axios';
import RouterLink from '../router';
export default
    {
        components: {


        },
        data() {
            return {
                form: {
                    email: '',
                    pass: '',
                },

            }
        },
        methods: {
            async login() {
                let res = await axios.post('http://localhost:8080/zoosite/myresource/user/login', this.form)

                if (res.data == "") {
                    alert("Invalid email or password")
                    return
                }

                console.log(res.data)
                localStorage.setItem('uname', res.data.uname)
                localStorage.setItem('statusLoggedIn', "true")
                localStorage.setItem('user_id', res.data.user_id)
                localStorage.setItem('role', res.data.role)

                if (res.data.role == 'admin') {

                   this.$router.push({ name: 'dashboard' })
                }
                else if (res.data.role == 'user') {
                   this.$router .push({ name: 'home' })
                }


            }


        }
    }
</script>
<template>
    <div class="login mt-5">
        <img src="../components/icons/peng.gif" class="peng">
    </div>
    <div class="login">
        <h5>Sign in to Peng-wing's</h5>
    </div>
    <div class="login ">
        <div class=" col-lg-2 bg-light rcorners2  p-4">
            <div>
                <h3 class="" style="color: #ff6726">Login</h3>
            </div>
            <div class="">
                <div class="form-group">
                    <label>Email</label>
                    <input class="form-control" type="text" v-model="form.email">
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input class="form-control" type="text" v-model="form.pass">
                </div>

                <div class="form-group text-center mt-2">

                    <button class="btn1 form-control mt-5" @click="login()">Sign in</button>
                </div>

                <div class="form-group blue-hyperlink mt-2">
                    <RouterLink to="/forgot" class="blue-hyperlink">Forgot Password?</RouterLink>
                </div>
            </div>
        </div>

    </div>
    <div class="login">
        <div class="col-lg-2 mt-2 rcorners2 cen">New to Peng-wing's? <RouterLink to="/signup" class="blue-hyperlink">Create
                an account</RouterLink>
        </div>
    </div>
</template>
<style>
.login {
    width: 100%;
    margin-top: rem;
    display: flex;
    justify-content: center;
}
</style>