Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAA880B2D
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 15:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mZkelW0RksXPhNazT/ca6xJ62951Ni6pKF0/OBW6WDs=; b=eH4
	nuHVvvam0qi7+zP3zXreimkSeDVwJkA31a+MIeIVrI+y8r9BW0YiktAO431qZhQo3HkKohklToRlC
	BpZaYbFcoLh8RDhoqlJiQuhk7v2dfjN8vJ+4cSWnckNifIxvqzeUb6ANiyHIoSvS2VUOOx5dabMBQ
	FhVTbAcddZE9wo9SS4aOyWP3eAkktoMlIFtGx6P1SRSmAWIs6uwIdPNiYSMip3esKEwoXhCcmniSz
	MXMKEQYQh8u4V3Obb6j9HbhOKv9jR2YrfpcpvPmdhQjbt0pO3Y8teV40V6/wUAYpI96+Bq0XjSx31
	iswyhpZdSacBF5VbwSsRt+FnalEI8nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huGgb-0002u1-Om; Sun, 04 Aug 2019 13:36:33 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huGgV-0002tR-OA
 for openwrt-devel@lists.openwrt.org; Sun, 04 Aug 2019 13:36:29 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N95mL-1iNUkU2x8h-0165Eb for <openwrt-devel@lists.openwrt.org>; Sun, 04 Aug
 2019 15:36:21 +0200
From: <mail@adrianschmutzler.de>
To: "'openwrt-devel'" <openwrt-devel@lists.openwrt.org>
Date: Sun, 4 Aug 2019 15:36:21 +0200
Message-ID: <00ac01d54ac9$9a73f430$cf5bdc90$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AdVKySSBx6+Du+mdTnO7S6A57gAzPg==
X-Provags-ID: V03:K1:SX6+4yWWtCi4114JKWmX64elcdVU14h8tMkii270XAzeUcw712l
 IfJUpdJXxwb/ncQM1vppJlG/bw/0d/CL7VQCuHjrydB4FWsrl1D/wm3b6/vpKOEUrm30ZXr
 kPvYz5BTgmYtyHCuofDKEtmIStaH8skimw5+4EgxbkH9KZIL4+UKkAhmbtZ9aDzG9sqUmAY
 2l+1P/OdUuA+Rbejhuztw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:n9eB+4AxjDk=:7VZ7VQdmXXefcIsK2SSNJW
 MqILWRMhk10WLf0sFQUry/T/dyDb9v6ikRBqQl5wlVrnLpBdn11L+dWnmNy76i9cw5Qdz/VRN
 mm1HW2uOS32BjjvExAii4i6tCYBhX1Gtmyb+onLwWMIcwTsqn/UdZLvCHzFjEb/mHCWOfdNZP
 KRxXpyduI/RGmtjU8LsENPCL1D/iyrNs5vaz8QPGKIME86qXpR9XNzlc4j9neWmCdYphXmQIu
 7a/lECgYRnCKNWFXWh3/nhNztSX5m6W0TIIp68aYGUgjhAZDCeDd9PiIcKU6C7+iLVSvimwn5
 A/qMDbPpoM++fVX+HUNzXbqaLEmYrtR8EL1R4eauZATJc9RYHueEa8vDZwNyYofjae+qywLtM
 IUTbTkhmN7pQ0v9TQV/wtQgFQj9TZWDraAXtqLPUgTw30ntKTVRnxkj9YRCjZZRKAb3ZiGAGz
 q3YN/dzVMHlc0Ehza8sBwPh9LMlD82V/J+MaTKrDx1Vn6102gnUTsLc08hdIWb/dygHQDzHyn
 9EwxdVEO3STtujz2sU3AsYrhCS2OPrUEmYEzYmBVboaIZS3vgOW2qsoSOvXOL5ZhMszWxz2Jl
 kOcYvBRsWsqX/P8OP9fQPunR1yIdetnAGiLY6YJNwWOmI3Ae3QMjeTUbpcoqqq6Dg/fXzeVwQ
 XJ++mHSB2rrC08CJZ31aTFKKE98zavMxIg67Q7oaHBDwVm96qtvxvNVZPXiQeg3Sd/HmY0HZ4
 ZZG8lU5amhRz1ShsyUvK+UFzVEUvrUBnO18yHrWD69hkrZDDlm+JVqa/SpM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_063628_081477_48B1502B 
X-CRM114-Status: UNSURE (   5.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] execute bit in board.d files
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
Content-Type: multipart/mixed; boundary="===============7052896751790119022=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7052896751790119022==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=PUFlbohJFnsOG2=-="

This is a multipart message in MIME format.

--=-=PUFlbohJFnsOG2=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I was just wondering why the execute bit for board.d subfiles is set.

In package/base-files/files/bin/board_detect:
[ -d "/etc/board.d/" -a ! -s "$CFG" ] && {
	for a in `ls /etc/board.d/*`; do
		[ -x $a ] || continue;
		$(. $a)
	done
}

So, to me it looks like the files are only sourced (preceding dot) and thus=
 both the execute check as well as the execute bit are not required?

Despite, can someone explain me the purpose of the surrounding $() for $(. =
$a) ?

Best

Adrian

--=-=PUFlbohJFnsOG2=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1G31EACgkQoNyKO7qx
AnC+2xAAnbbRPhuQaE4PAZsTekcI5cGw4zL1Lj9WjNM0ur1WKhrFduGyER1SXXS1
riHcCmtxvdLE5SKLP/hKTU7F9hevR6Hs636fWEjGgQDuju6TzQZ3I2hjYKyvNZr3
TFS0mQX3RYjGn3xJ+JmQkPLBZGI2g8lBqGoqZbkSE7OOb5Rw9HZYI5RbleKq/T9l
0fyHg5336xfpk1nDmlLLunACH4MFxkUfFOsczSz1jYF+oiuUs7QOmN5UkD5jkipY
WGaxpxu+GNv8TEMCxVYbZLt6nOuBdpugOsgM/9CN+wuvrF2S9FPovh2Sfi1PxCX2
NfcKek88LxOu3Qqp27bFJqjZNdk5GCG2Ps0XZqqnFk+C/le8TtFoBGTqcMthdp9M
PRKshAsaazWme0usbowKJeB+DlTvNQSkaVmFoH+KbLhd1UgzfK3dQj3q7HuF53V1
6xropEn9EYo7ZG3HGktVTDpdt3Z62XNeSAdyDzmq4XkcN5sEm8VxMh2hwZ/WjqJY
nMKoqjckXl0yT1zbpwca5jHefXryb3TTZ9/9tA9pY8ucJCVc6WvoMt2ZgotlaWJX
avnbYK6boy9nIRm8H1QYA+aVka1FnWibPFWbJ0oQZPcX8OtUNAcBIXt6q0qKloSJ
2PCsfbWX1TU22+1fMo0bDl4GvLOys3ocgi/ZoRl+/hTiyE0ECg8=
=OmTH
-----END PGP SIGNATURE-----


--=-=PUFlbohJFnsOG2=-=--



--===============7052896751790119022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7052896751790119022==--


