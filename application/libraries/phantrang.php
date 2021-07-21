<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Phantrang{
	function PageCurrent()
	{
		$url= explode('/',uri_string());
		$page=$url[count($url)-1];
		if(is_numeric($page))
		{
			return $page;
		}
		else
		{
			return 1;
		}
	}

	function PageFirst($limit, $current)
	{
		return ($current == 1)?0:(($current-1)*$limit);
	}

	function PagePer($total, $current, $limit, $url='')
	{
		if( $total == 0) return '';
		$numPage = floor( $total / $limit);
		if(( $total / $limit) - $numPage > 0)
		{
			$numPage += 1;
		}
		$html = '';
		if( $numPage == 1)
			return '';
		if( $current == 1)
		{
			$html.= "<li style='background: #006633;color:white;' class = 'hidden-xs'><a style='background: #006633;color:white;'>Trang đầu</a></li>";
			$html.= "<li style='background: #006633;color:white;'><a style='background: #006633;color:white;'>Trước</a></li>";
		}
		else
		{
			$html.= "<li style='background: #006633;color:white;' class = 'hidden-xs'><a style='background: #006633;color:white;' href='$url/1'>Trang đầu</a></li>";
			$html.= "<li style='background: #006633;color:white;'><a style='background: #006633;color:white;' href='$url/".($current - 1)."'>Trước</a></li>";
		}
		if($current <= 3)
		{
			for($i = 1; ($i <= 5) && ($i <= $numPage); $i++)
			{
				if($i == $current)
				{
					$html.= "<li style='background: #006633;color:white;' class = 'active'><a style='background: #006633;color:white;'>".$i."</a></li>";
				}
				else
				{
					$html.= "<li><a style='background: #006633;color:white;' href='$url/$i'>$i</a></li>";
				}
			}
		}
		else
		{
			if($numPage >= $current + 2)
			{
				for($i = $current - 2; ($i <= $current + 2) && ($i <= $numPage); $i++)
				{
					if($i == $current)
					{
						$html.= "<li style='background: #006633;color:white;' class = 'active'><a style='background: #006633;color:white;'>".$i."</a></li>";
					}
					else
					{
						$html.= "<li style='background: #006633;color:white;'><a style='background: #006633;color:white;' href='$url/$i'>$i</a></li>";
					}
				}
			}
			else
			{
				for($i = $numPage - 4; $i <= $numPage; $i++)
				{
					if($i > 0)
					{
						if($i == $current)
						{
							$html.= "<li style='background: #006633;color:white;' class = 'active'><a style='background: #006633;color:white;'>".$i."</a></li>";
						}
						else
						{
							$html.= "<li style='background: #006633;color:white;'><a style='background: #006633;color:white;' href='$url/$i'>$i</a></li>";
						}
					}
				}
			}
		}
		if($current == $numPage)
		{
			$html.= "<li style='background: #006633;color:white;'><a style='background: #006633;color:white;'>Sau</a></li>";
			$html.= "<li style='background: #006633;color:white;' class = 'hidden-xs'><a style='background: #006633;color:white;'>Trang cuối</a></li>";
		}
		else
		{
			$html.="<li style='background: #006633;color:white;'><a style='background: #006633;color:white;' href='$url/".($current + 1)."'>Sau</a></li>";
			$html.="<li style='background: #006633;color:white;' class = 'hidden-xs'><a style='background: #006633; color:white;' href='$url/$numPage'>Trang cuối</a></li>";
		}
		return $html;
	}
}

