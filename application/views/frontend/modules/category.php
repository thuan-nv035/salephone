
<div  class="widget" style="margin: 0px; min-height: 0px;">
    <p  style="background: #006633;">Danh mục sản phẩm</p>
</div>

<?php
$listcat = $this->Mcategory->category_menu(0);
$html_menu='<ul  class="main-ul">';
foreach ($listcat as $menu) {
    $parentid = $menu['id'];
    $submenu = $this->Mcategory->category_menu($parentid);
    $html_menu.='<li>';
    $html_menu.="<a href='san-pham/".$menu['link']." ' title=' ".$menu['name']."'>";
    $html_menu.=$menu['name'];
    if(!empty($submenu)){
        $html_menu.='<i  class="fa fa-angle-right pull-right" aria-hidden="true">';
    }
    $html_menu.='</i>';
    $html_menu.="</a>";
    if(count($submenu))
    {
        $html_menu.='<ul  class="sub" style="backgroud:#006633">';
        foreach ($submenu as $menu1){
            $html_menu.='<li style="backgroud:#006633">';
            $html_menu.="<a style= 'backgroud:#006633'  href='san-pham/".$menu1['link']." ' title=' ".$menu1['name']." '> ".$menu1['name']."</a>";
            $html_menu.="</li>";    
        }
        $html_menu.="</ul>";
    }
    $html_menu.="</li>";
}
$html_menu.="</ul>";
echo $html_menu;
?>  