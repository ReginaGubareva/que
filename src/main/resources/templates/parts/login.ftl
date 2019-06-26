<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"><strong style="color: #28aaa1">User Name:</strong></label>
            <div class="col-sm-4">
                <input type="text" name="username" class="form-control" placeholder="User name" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"><strong style="color: #28aaa1">Password:</strong></label>
            <div class="col-sm-4">
                <input type="password" name="password" class="form-control" placeholder="Password" />
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label"><strong style="color: #28aaa1">Email:</strong></label>
                <div class="col-sm-4">
                    <input type="email" name="email" class="form-control" placeholder="some@some.com" />
                </div>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <#if !isRegisterForm><a href="/registration" class="btn btn-outline-info mr-1" role="button">Sign Up</a></#if>
        <button class="btn btn-outline-info" type="submit"><#if isRegisterForm>Sign Up<#else>Sign In</#if></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-outline-info" type="submit"><#if user??>Sign Out<#else>Log in</#if></button>
    </form>
</#macro>

