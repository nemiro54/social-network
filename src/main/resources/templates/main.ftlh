<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div>
        <@l.logout />
        <span><a href="/user">User list</a></span>
    </div>
    <div>
        <form method="post" enctype="multipart/form-data">
            <label>
                <input type="text" name="text" placeholder="Введите сообщение" />
                <input type="text" name="tag" placeholder="Тэг">
                <input type="file" name="file">
            </label>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button type="submit">Добавить</button>
        </form>
    </div>
    <div>Список сообщений</div>
    <form method="get" action="/main">
        <label>
            <input type="text" name="filter" value="${filter!}" />
        </label>
        <button type="submit">Найти</button>
    </form>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName!}</strong>
            <div>
                <#if message.fileName??>
                    <img src="/img/${message.fileName}">
                </#if>
            </div>
        </div>
    <#else>
        No message
    </#list>
</@c.page>