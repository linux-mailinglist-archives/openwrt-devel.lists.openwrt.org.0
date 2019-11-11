Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93078F6BE8
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 01:04:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pS+T/oLfi0gxrCc7iWhSRNpB5MjjCZs/dcRHXXw4gbE=; b=lV9ZB8iMlA1gn44zUPylzqvv8
	YZmEgKcbQmiFLjup7rDE1/psvAGc/9Nlpr2L2LuNzglbs8uIZQeuWIlFenNfOzjxMsxeskFkNVadx
	T9nnUIAG6E72Sm3KJC6lcssNfi3fgIf6w/7G+mMDrxOjccAQ/f6i5FwDJ16Gd91VNm1TDmHp76108
	CvrDDMOgJf7t3GnW6SIE+xWQJNB4Rvqkaayo9DJqlZplHEFkEVEyK6KfQ6hz1+tcZTVj8cLIIe51u
	1UF/0r222IncQbVREqazEHlxpxFrTWUkkFvb7LCU280R3E29/JV0T+FOwt3FZf3VX5/JQH8jdS938
	H46kYySQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTxCL-0001wr-GO; Mon, 11 Nov 2019 00:04:49 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTxCG-0001wU-Av
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 00:04:45 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mgvev-1hyDH83tBl-00hQLc for <openwrt-devel@lists.openwrt.org>; Mon, 11 Nov
 2019 01:04:40 +0100
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20191110233217.2656-1-freifunk@adrianschmutzler.de>
 <20191110233217.2656-2-freifunk@adrianschmutzler.de>
In-Reply-To: <20191110233217.2656-2-freifunk@adrianschmutzler.de>
Date: Mon, 11 Nov 2019 01:04:39 +0100
Message-ID: <024c01d59823$9cd01ea0$d6705be0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQMJquHU3m22B2z5eodzWmXHYWRQ6QGm3UQdpQ+6SlA=
X-Provags-ID: V03:K1:ofjtN5xeSb+u/n8a3qpk0/ZHGDQFDBfKnLftpb8h0/IBeAeD0ea
 uFSsAyh8lNAcg+3huxTFkqx9LP8WDjgvoJ4J32YVU5utFdHIJi28mIl/NsfcSiriE7Q61H5
 T+SlgqJB3erwAPCMtZZwv/Zp+lil+JZEtRj1DntgqNwAyzz0UYaC1d49vH7QP4FhQPSxLlh
 16Bna3vwKs+5zreX8WwmQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0jOOmcHkwD4=:D3nFkfucIiU1rmCjOclU4z
 9YAAke7pspzd7ebLDYDG4IL1jyAcD79Wq4/y+8mbkJb+jxbeQxAWhr+CdlbUGz/g0O1sPJhrt
 JXk/tZ1ghKsbRu1ydrcnOwg/Qx6Z8YdAw+lPVzZZtUpWQpTIanJTf731iY8m8HGrXK4XYo+ER
 PlFA50wUWVj3O2Qmbs8hHsx/59ScKxwls0bhDgGBRkgh2HtRBvg7DS/9R0sXY8EbJsQKvpGE5
 yNnIoqPyFOLwDzMtPFYPeCefDDA/0yv3nPoklNQJg/vQfGUeYHqlwnMEIyJzFjT7RcH7eFDRf
 2/jTdNhPQtZzgddPraWRzA0V13MFaQMVtuzGJkGq+rMGqWkg1OKq7mNDpxxg/2oRype/MF2+7
 pqO3SfKmplX8tuwjnVz1CHdVMy367ZMczpxDE+WgIx/4Y+OLVpYtZxEEb9haO8dUMjnzEUlxS
 Zth3t+ckB6z+4RP5CBNCJtdYEz4CIVJNZCsB2tuavmXIhbwWyNjrbGPY1cs/5vgdVVgy4ap5k
 Kb9ZzRRehebkY4NIU2w7hqPOzvnXlkPmWyYZQ3yDWwhh9VN8PPf3aUi72mn4ruvVcP8R8RT8S
 aFjUVwbyDTJuImqh81wCVrtGe2bj+alZPTwB4ETZ0yPH4Dr0ipHSfBx5Mk5ytBInpNZ9CiGbL
 IHbkf8hUiQoaPqHprHhF0E+5Xzx4U4yLAwDyKfTslJpnaQcJHfyxRscZM6xb7GDaKK9NX3QSZ
 Ng98BfOAP06FAN//01RxQ+n+J0A7Ot4mhL2h5TXn7Cf4DTkKtYmeLh1/2Yqmtc6q6H7eiRZqS
 ooIT1Tkbg531MdcJBC2Xv4BwB6cLnC5bGuL8rIZcPcC+uLXj7C4DJry/bEuO2OJ+UO6BzCywg
 TRzh7XAhm0Cixt4RIEqThyJfQEVdFPEqkkuwSCeU4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_160444_672244_AB530977 
X-CRM114-Status: UNSURE (   6.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ramips: read label MAC address from
 flash instead of using phy0/phy1
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
Content-Type: multipart/mixed; boundary="===============8659914380577447957=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8659914380577447957==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=2mMncb0c+3druT=-="

This is a multipart message in MIME format.

--=-=2mMncb0c+3druT=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> index ae03dc71b1..0de3804cdb 100755
> --- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> @@ -188,7 +188,7 @@ ramips_setup_macs()
>  	asus,rt-ac65p|\
>  	asus,rt-ac85p)
>  		wan_mac=$(mtd_get_mac_ascii u-boot-env et1macaddr)
> -		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
> +		label_mac=$(mtd_get_mac_binary factory 0x4)

This one will have to be mtd_get_mac_binary_ubi ?

--=-=2mMncb0c+3druT=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3IpZMACgkQoNyKO7qx
AnBTEhAAgW1B2XaI+5zfiBnEetS0DOgg8J4YtJyg0EZ5O8HI+5jwaHHiCOdyeqOB
eFVrmLZCNNOnbWaFjs6S2tZB68PTSUfuZRp06z3+tJi25E1izaAWrV7VMsVHO0yL
yY/Ol0mH1jyctCRGtQlweMgDxzKvZBwHPmGmGI9pk0i0Q1qPCY1gHs1Tb8h56F2X
A2sY+npECzIRoc4NiVGQLGmEoDF3R9bujZnCCVzJEOXAGIklZJ02AwEUUA6UAeti
dL5Hr9EI2c9lzdjM9B33H4nYVjDsrT81dtMgSvMFaxH82kqzJr5doZwB3NnZEoEh
xsZ8ZM09CVKC5RpwCicQyMuwRDnV7KmuJ9KnvtKoKKIDRlWuJtUcMyflxNT1OVf/
Ldt8grBU4Z1Rpuv716Av1AVrrKF3b4qQnSv3R4ezrAzFsQQSTOJx8kB2+kAfBmak
KA0UerPIIuj3gvg8kFN7S1/y/lXTj2KuITXNdrU8qYmNatjioM7Z2MHKSKyGze+y
RXXDN2ErAiUb+CGIh/oDKCM7ECUIzcEvTsIo34zijD037OpTLJ3tS+80FAhkiQ5o
CsF3u9Y1AmjaAjTszTuPpbRuMI0H0NvC5xykbYXoJiKqzghEAKO/E8KNU4FpYTfF
GHohOBfhGWsG9KWvGNH3XEzK2e7IpGaiKFV8pr86xdGC4jeaXe0=
=ree9
-----END PGP SIGNATURE-----


--=-=2mMncb0c+3druT=-=--



--===============8659914380577447957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8659914380577447957==--


