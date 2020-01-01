Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9476C12DECB
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 12:31:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5NivigqrW9cMC1vtNtuNCSYI+T224ysKppJ8j6lHro=; b=tUmc2yIcyiIUmw
	6ZqyCFhEuWd+oQt6ZxDNTWK84FSP0g8ncp8VGcuVuGg2b0VHmokxFpz12YyFOXz4YQoYXtqQ0QNk0
	SoXOfCGSFtBy/+mD1sPs3vIZlC/n9EnS6KMc19fzsEghdqvBmDwHMwnNdCHWUJLE0aVkxzY6DdoPr
	za0HQninm1KD3MsLuIHHUxeJ/TzQI0DkpqTFdOYeXHcz0NVKRdsWNvPurMLg4AAHxZzEoAa+X0RHc
	cOnviqJbzQdKvRcDjwvs0iIqfICB3ShlWk+qlW0i1YMgRSZGJDEB8gJClIgDrvwb2nN5rnLFUNMwN
	UCV/Af7lmAtEd4z1YeFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imcDr-0000ew-Fl; Wed, 01 Jan 2020 11:31:31 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imcDi-0000eO-L6
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 11:31:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1577878278;
 bh=pwED/iqxwNA+8GYkurrDXZJGcP6FgRLpiStZEga6XZo=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=BkmRRqn4NmAIvz6MP91no8zA3ssR66/gvl5ViPQ///NZfchVZN5D24+CdGPbpvMB6
 zHOuAReL14koR8KIA0pas8w5sOT9T5Fy8MSsNouxj3YIkAvOPihciq47qr2tLXTaxP
 QYQpA/hwQ+nYDLm4lQwaF2qUIUy2jRSvuo1MinWo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.0.80] ([178.14.1.230]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MBlxW-1isA8X439I-00CBGT; Wed, 01
 Jan 2020 12:31:18 +0100
To: Rosen Penev <rosenp@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20200101020822.21784-1-rosenp@gmail.com>
From: Hartmut Knaack <knaack.h@gmx.de>
Openpgp: preference=signencrypt
Message-ID: <00be385c-a36b-b3ac-db91-a4936de51538@gmx.de>
Date: Wed, 1 Jan 2020 12:31:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Firefox/52.0 SeaMonkey/2.49.4
MIME-Version: 1.0
In-Reply-To: <20200101020822.21784-1-rosenp@gmail.com>
X-Provags-ID: V03:K1:w2NoRCKxIzpP4hJSM6CNqwNkVi5wBk82K6U6LyB4zgbVtZaBMC6
 5/LWSMKkEJAb7YmWgQ0ZTcjYuoRpzPaZp1Zq/ns0hepYnzevsmpcKbjkwM35EW8iW1wNRJ2
 /fwUf2zI9DV3vwZwzEQrMIcFvVJPNScXr2bL5xFxmkfPRmt/m8aVeecjucN+03IbQyA0zgb
 SEDLmkIm7Bo1Do+rCPBwA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:54rM1e9HmS8=:YbIJegGFQ+qSNMpN8mmjim
 DjQVYI2GdUFL1ShjphDdrZZ1oJ9g1Rpczq/P31jvuFZ7DihpbH5NLBqFA0amOCXiE8Ma0rLwz
 /0paajceoT+ZLK9BejC080Et6KqzXqYMX5Bn1v1rLkuqsSAEPLS4FOtXraxNHfvIDZCZkL1gq
 XJtqXLqK7UIn35qZ+WdmPb0NIEAN1H/wBYpwLevDB5Q26iTouBxnDq3C7isSNUVVs5R3E5hDT
 mcsAA/FgFQmfleR+9RV3ofCmHfBvC8K+OGBZig1dk17y8JIwvadDUR/Y/2DLtj2OgNNW4AtuA
 aTrFsV+6r0XFcLswBmifIzcFOwDkXePztMhCyiYRLXxUoBI2Vr8vuVEQwtQE5cJj+Bpjyji3d
 rjTv6Hlcg/Pl1OALdWtFmPeVWSU/3Rj9LtsAfSLCtQcFQV0W4eoAwPbp6faDKf8a2vgMXNxqB
 bzLWN1TMgFDE0rrd2qZNx8ZQ1+PIjhlMKxkzxLbiRARpfZfcTlacVoyXF/TTURaRDIbP77YyF
 p8ZtNfAZ1GOzfh7GmlDNDdwP9/mAT/5mJb6+fXrHccpW2EHgXCI0yaA2dGJs3soaYhdeXBz2U
 edEN82fCKxX2WXX9LdGqaNeGU845mXNh6TpIuisOrI7X5LI+dcqme1DCgxuJxpV6cabFjw9T1
 EZNLrm2xDwHHx+VU5MXiN9+RQWXVvg4f6ShjDB4s4C5UraFr5eeXcP0koSyuxacf/iz3SBYYK
 kMA7ag514tsSq8xJMkE9HpFC285wkk5WGS9zx+4glTnq23I7RB3FMV9gp5EoQ95aoq4R5tPuk
 5KrndHS95kMWnOh4cvrWXtckEwSdOD6z6jEkSvY1lDo0IEv5iVOH0dbZpL9SMlR8bkxC1eWV6
 MU7Hk474+oI+T/5MQ+kbd3uy6G0q1D6sHTVt21/9KZN8VROBzaCXB0L35XMlzPjNMZvpk29Ec
 apwt/lk4PAtOyBisdo5vNpRWqIYBh9QIt4opxdY2DZ8cLP6gFp9MmdYMvWVja9m0Ad4hxRPIm
 wpGvKvh2wT2RRnviqe/P1zOGsAg/2qtT0Vsuma+l5nZLdzuH3CoX5/FEs86N5veembmVZlLNb
 GnlF/0LVlAmzSfsI0KWoJ76F2H5LgyLLvq942joHKLYKe1i+gM/Z/sfZodqTTrH0bDqGOBdJu
 Au2s1nsrZ1zihuxV9Fvn8D1jwxIy5TmdPj3+SaFh3sfnJRbNTna5RxMTnGPG48EHgY0Lmdx29
 a1UTL1vNgg79iLwnXx/B25HLe7RDoHvhJ/D7YAjpakySg31Eb2ILUU3WtsI0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_033123_018938_E9A6075F 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (knaack.h[at]gmx.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.18 listed in wl.mailspike.net]
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

Rosen Penev schrieb am 01.01.2020 um 03:08:
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

Hi,
I would prefer to have the above code block indented, as well.

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
>


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
