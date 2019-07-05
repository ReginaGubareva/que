<#import "parts/common.ftl" as c>

<@c.page>
    <h5>${username}</h5>
    ${message!}
    <form method="post">

        <input type="hidden" name="_csrf" value="${_csrf.token}" />

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">User Name :</label>
            <div class="col-sm-6">
                <input type="text" name="username" class="form-control" placeholder="User name" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Password:</label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control" placeholder="Password" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">E-mail:</label>
            <div class="col-sm-6">
                <input type="email" name="email" class="form-control" placeholder="some@email.com" value="${email!''}" />
            </div>
        </div>

        <button class="btn btn-primary" type="submit">Save</button>
    </form>
</@c.page>