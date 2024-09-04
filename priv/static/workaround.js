{
    const remove = [];
    remove.push(...document.querySelectorAll("body"));
    remove.push(...document.querySelectorAll("head"));
    remove.push(...document.querySelectorAll("html"));

    for(const element of remove){
        if(!element.parentElement) continue;

        element.remove();
    }
}