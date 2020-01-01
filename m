Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C132F12DECC
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 12:33:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GDB/yfrni783BzyWhtaV+dxB7RuuHTfUXydTPvXuuQ=; b=Gj+av+uSd0OGDO
	5ivx1rDkjDXJZHHFJJrGybhJmd1TXh+CVpXpxyLd7G918iQ4kHq7LlH0JzgvzaYEETj2Y6s6GYO6B
	lMFjpk1dekjKrCTwyyDnE3qkuOEtiyhse5hSvFuIHQf+7/j9c6Jw4eOhBXQTOKkdlRhaqTtTmIoqn
	V2xpzKrsT6NDT+guDw6yJp0HHpGBcwLgfpQ4rbRjgRup4hpJRk5UjYum41C/J1zVjRvSKhRg/d4k8
	yKuf3+pl+3Vu67WJpYvjaoMTLaa37aeZJLgnXTwL5KaawgiqttzjW0kuO6WQXMe25VjCo3cZw+E2D
	Hw/wA3LlzXSXa6V4y+zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imcFw-0000yK-A4; Wed, 01 Jan 2020 11:33:40 +0000
Received: from mail.nic.cz ([217.31.204.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imcFo-0000xv-7K
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 11:33:34 +0000
Received: from [192.168.1.121] (ip-78-102-138-110.net.upcbroadband.cz
 [78.102.138.110])
 by mail.nic.cz (Postfix) with ESMTPSA id 68CF2140E41
 for <openwrt-devel@lists.openwrt.org>; Wed,  1 Jan 2020 12:33:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1577878406; bh=dCMp+NutTbVrqxNw3kF0p/wYwQAUGwVySkTp/TX52fQ=;
 h=To:From:Date;
 b=KcnnQ3IsNdKhLGDWf20O0i1IQgPamNaDfiiTKzV+hmvZASXBZFztCAj6P0cjDEEbx
 IZvTxTRpKxlaa/3L2vtQtjnmsvKxJW/Ay6ganD0DY2YG3JHvVPYSZDChwsHu+SZUbi
 sJQGtU1FGzsBrHJ4uAbRbz6BBi8gZsTV4SI9RsUg=
To: openwrt-devel@lists.openwrt.org
References: <20200101020822.21784-1-rosenp@gmail.com>
From: Josef Schlehofer <josef.schlehofer@nic.cz>
Autocrypt: addr=josef.schlehofer@nic.cz; keydata=
 mQGNBFsWUgoBDAC6Aga59UKQb6OsxcUS5/NIuBq09U7Y3+VXB/1C3T/pNKa0dxDuRbOdhSSU
 R5yyBbrb/6OdoKJzB3/AY71uoF+3z00CaDxqJoqDLDEJ8igNZxZZ58UF0v9oJxRCnZ0yf/kz
 x3oa2J9zYDn6IrfciFZlkf60VXaA4O3K7KYWRdgZFjwNcbqD0Kgvs0C79bhmSRgkR3I3QNFx
 rihbFy4d9tpI/cYPtqsoHlvhq6xqBQj8CtF5/6hxMn3OcjzVAK8MGG9J+IimQ8Del9P8Swrl
 XW12PtIY6/GjhXl/C8cuCmA+OqcFWeF5zx7RYMts9ruWNUyXzZUxqE/RNXDPyRaWhwXsiwsS
 j8a60o+vOGb0LfHAozVOPR8c/BNpa1fZICn7KrGJhXfLUhP8DcHyx+IeMnfqnY+3iw/40OlK
 RJ0/7iHL2ZSGoPhvEciDW3TMbscYn/cxCabDc7QsKNe4kfMa6MI0Ydc3KHVA7I4iAOigduY9
 IAmOB52BV0I04HLWpYDwG80AEQEAAbQqSm9zZWYgU2NobGVob2ZlciA8am9zZWYuc2NobGVo
 b2ZlckBuaWMuY3o+iQHXBBMBCABBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheABQkDscUj
 FiEEVvFq11QlPPxS8G8UcXC6Lx0Cn8sFAl2fR38CGQEACgkQcXC6Lx0Cn8uEPAv/VB4fSNlZ
 lnRucptYeHc8aWpiAUcv8Z3wghdvKC85nH/WM2BHoHEm1MwWFNiofbjIV6jsSSDW1psM/CR1
 luoNzxoe06R9+I01XToq2ETKCuYWWLnnOijuUJDrTzL6TJU3+7BOrCyB5oPvXdCvjb4wZpXy
 AzCiNvJNgK6vAOOGR1BXcfu+BNZy6S7TrBumV5nm49QcLEJBzFUQSl3V1r980ust4diFP5PF
 Wt2MiSedznP2ludjcHhWZlaedBUQBA/Icj/MSGyS573h6nmva9WXV9FybfPIZQxN6TPH5g9E
 9N11blQn2wr7AaIca6Xy3Eb8Yr/sXjYVRFVtAMj6omEurtVKZRNBkOv27v4fHalsTg3/XWHx
 f47iumvmpzPp8qKtN2Vd6WHwVWFzoVE8PvZo//kJhxXNXELDDfwsbQ77823TU6bL7qfe/hKH
 yRpBN+F+qw0GJnNOGjUkFeSCgVeOYf0Ymec7s8kH/u86DMHNW3GaorZMnnVvPDB8Xcv7kT+k
 uQGNBFsWUgwBDADcM70vXfBhcNttMXDgchOsPciN3/JIF8Y9Ne5vlNhmPOXVqh2Hrn+ulWy2
 dtwm4g5SpHx3NrV1GSmt6K9rctXVxuJjr7VhCS1zRlu72tRaWfH9xMwEO+sdv36D8lhFF6ti
 ZQfjBCnB/Hnp4fP9qK5FxtZCWhzcm9Yv20tvKbg1r2jMPUAhW8NFhAMUBDs4KJSCpNrTWXik
 dzQzLGzvWTQRC0rvQtB43H180M4RcslueYonCW9zBWS/+1Bnyq3WsTw2Mjk2cJycGtqBIC+h
 6BFnNe/BqY+dMyal3o8nyyo9eC1zBpuDY6Zx5JGMcv83yIEu0ivTEH+WSK5s6TMzoZ/TXW4m
 DJlzBWfAUDUpUkjFO0ilroA5cYWDnrqdwIFYdYHQm05e+E3uJlEr3etr//xDl5nDr2u5gowG
 ulrVnE0jrga1lQ5OnmDNeaTHpK3Yc7PJCSBHF4HDaauFSNXH8uVy8Wxr9M60NRwTGkbo8XPU
 EES8wPngxPbgXWjX/WGmuxkAEQEAAYkBvAQYAQgAJgIbDBYhBFbxatdUJTz8UvBvFHFwui8d
 Ap/LBQJc5uWgBQkDsccUAAoJEHFwui8dAp/L+lUL/iwmfUC2CjBxLW4cUbSzUJo8t+JKLqK+
 ZV4yBUa/FljtnY5Vl05Q5p18C//9T3pVmmepaLpkxIeROeF+R2on9X1fTriJjxblCu7G1oUQ
 qYB05dltq5HoNKZ4VSZeiaO96fCszND+Ipa451tERKqv/69LygjemtNHLzS0QH6EzmI7oMZP
 ELrkK67XOJ3kD62KbfbD0VWUBbVPMGdYfqrBvoiu/CZ8TjsZI4wgz2Ba3wlYCs4ta7lSuap1
 XKRx+WjPwYBHxE4xNfuFHkl6vu9fumfaWXPb6YizW2r3fHhO7QHSistyU1nZgug+Bs7ddCrK
 BT5mJSG43GNVjq8jzOuTVNZZEeUWEiLs+MKcslCzvE7DODPwe9lPusAIATkaVlJaWDnwmXne
 zTILogL9U4ldnzLgNeAp0kzbgSAWZGcNSCFwjkONkHGSCiW2uXqRrDRxYsWhEdFORQwZGbeR
 urvha+Ur893+Hpxn5Eb+xNf5i28JQymJbRXZm7yGLBIXwU6wdg==
Message-ID: <e9740c68-c271-3dd0-1675-f2d977102aa2@nic.cz>
Date: Wed, 1 Jan 2020 12:33:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200101020822.21784-1-rosenp@gmail.com>
Content-Language: en-US
X-Virus-Scanned: clamav-milter 0.101.4 at mail
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_033332_709869_70BA061B 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] wireguard.sh: Batch file writes
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

This needs version bump of PKG_RELEASE.

On 01. 01. 20 3:08, Rosen Penev wrote:
> Speeds up config generation.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  .../utils/wireguard-tools/files/wireguard.sh  | 32 ++++++++-----------
>  1 file changed, 14 insertions(+), 18 deletions(-)
>
> diff --git a/package/network/utils/wireguard-tools/files/wireguard.sh b/package/network/utils/wireguard-tools/files/wireguard.sh
> index 4c811c6ba9..1e424e7959 100644
> --- a/package/network/utils/wireguard-tools/files/wireguard.sh
> +++ b/package/network/utils/wireguard-tools/files/wireguard.sh
> @@ -42,13 +42,12 @@ proto_wireguard_setup_peer() {
>  	config_get endpoint_port "${peer_config}" "endpoint_port"
>  	config_get persistent_keepalive "${peer_config}" "persistent_keepalive"
>  
> -	echo "[Peer]" >> "${wg_cfg}"
> -	echo "PublicKey=${public_key}" >> "${wg_cfg}"
> -	if [ "${preshared_key}" ]; then
> -		echo "PresharedKey=${preshared_key}" >> "${wg_cfg}"
> -	fi
> +	{
> +	echo "[Peer]"
> +	echo "PublicKey=${public_key}"
> +	[ "${preshared_key}" ] && echo "PresharedKey=${preshared_key}"
>  	for allowed_ip in $allowed_ips; do
> -		echo "AllowedIPs=${allowed_ip}" >> "${wg_cfg}"
> +		echo "AllowedIPs=${allowed_ip}"
>  	done
>  	if [ "${endpoint_host}" ]; then
>  		case "${endpoint_host}" in
> @@ -64,11 +63,10 @@ proto_wireguard_setup_peer() {
>  		else
>  			endpoint="${endpoint}:51820"
>  		fi
> -		echo "Endpoint=${endpoint}" >> "${wg_cfg}"
> -	fi
> -	if [ "${persistent_keepalive}" ]; then
> -		echo "PersistentKeepalive=${persistent_keepalive}" >> "${wg_cfg}"
> +		echo "Endpoint=${endpoint}"
>  	fi
> +	[ "${persistent_keepalive}" ] && echo "PersistentKeepalive=${persistent_keepalive}"
> +	} >> "${wg_cfg}"
>  
>  	if [ ${route_allowed_ips} -ne 0 ]; then
>  		for allowed_ip in ${allowed_ips}; do
> @@ -119,14 +117,12 @@ proto_wireguard_setup() {
>  
>  	umask 077
>  	mkdir -p "${wg_dir}"
> -	echo "[Interface]" > "${wg_cfg}"
> -	echo "PrivateKey=${private_key}" >> "${wg_cfg}"
> -	if [ "${listen_port}" ]; then
> -		echo "ListenPort=${listen_port}" >> "${wg_cfg}"
> -	fi
> -	if [ "${fwmark}" ]; then
> -		echo "FwMark=${fwmark}" >> "${wg_cfg}"
> -	fi
> +	{
> +		echo "[Interface]"
> +		echo "PrivateKey=${private_key}"
> +		[ "${listen_port}" ] && echo "ListenPort=${listen_port}"
> +		[ "${fwmark}" ] && echo "FwMark=${fwmark}"
> +	} > "${wg_cfg}"
>  	config_foreach proto_wireguard_setup_peer "wireguard_${config}"
>  
>  	# apply configuration file


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
