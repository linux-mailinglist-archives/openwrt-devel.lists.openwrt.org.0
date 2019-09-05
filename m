Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70016AA6A5
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 17:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fUSGBQTQh6sN8+N3P1i5NCKyZ9j5/cbUy3iqgwUFZjM=; b=IGL
	8cksRdMDbWX3/AIij4qpx+zfbhE/jm6D5Ri4aiH+NAZEIFs4kGeVyfNWxUgJo7YQnsI+kcOyiCo7O
	CHdy0Sj+sawUiLNt/si2xAr/XQEBVR9QzPKYUCx/R17LeHvHjU1atOtKxG/BmtmNvKRNOZW/nuaLR
	kD50TUueMG07KcAMjzb59b7VAaoX3+CAOMlOde/FSKwDwT1RjRxmYTCFTklwJX/22QOF9F06xfist
	44aYrecXFLwHpRtrD2ZnP0WdwTLlkBozXxLRoBCZfmtAVsRLzPB00DpMxl/UqhJj8+XZYwd/uJr3/
	Na2uUy6+aQrH3dBxXauZL1HujI4wdtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5tGH-0004jN-GR; Thu, 05 Sep 2019 15:01:25 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5tFF-0004f8-V9
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 15:00:23 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MkIAB-1iYKBU2RU9-00kj7j
 for
 <openwrt-devel@lists.openwrt.org>; Thu, 05 Sep 2019 17:00:17 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 5 Sep 2019 17:00:17 +0200
Message-ID: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AdVj+QPyMo6GNHRSS22lYPwIEw8lGA==
X-Provags-ID: V03:K1:k/SMl0fks4xbEbeVoTWBwNz3lfVX7/FdkZ9wysbtIHKf+qcATyd
 YVtaG1UsjmERczn/o8zuBwMFbM+eUdo3lK5RLozQAfSey0/ZiUFILY/rdiBB6+B1ZXswFRQ
 dFngGJ4B/EsGfQjzu3N1h5xXmh4qdysEB77FX5MiXkrxhmqIBS8NVdSIcaGqIDWeUQvK3nB
 aTIhxRwxwt9OxvyCqBPWQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jIdc+fJY7js=:qr+fmVG11nmRYR0Q0Fbasn
 AuJCtVQeLq3rrzgs/+N3uHjw/FSKwZnb0ca4dZxgPh4YgjUjJgvlk8Rl+eZwE65xcvHsVtlF7
 4eAqsMrC53Ctj5zwoB3Ujdc7rMY2DAlhSJRfiJvZcHh+LYlEsrApqwLv3f/aSNe6l5Y2HUzjO
 pzjkRAkzrM+JzJU5pmuPERRW5nlM3v3joDQd8WzG/QlzamWWm5DTeW9zHoJztlMKQnEtfurIY
 xWtQcU8bzzkEChrm7luWpdX5j79YsYZYRI0rUUxaJv4zKh1RuEIeTcVx24vTJMKv0xdx1LEiT
 jzALWLkIzVp1+QQ4iHwQ04tngGt1ZuoRJCNjZVVkDpr5DLzLcwA9wawdfaP8+Q65VikZGdkcw
 4Ku9UW0789pECEgK3dDg5x/MrkvCg6PGQbEGUf5lccT/iUyqEOfb5x0mnbsFlZc15bWlmPMWh
 NQcEzeuG/F98oqHJxuf8GbstWgXC+0qGTdKHpsdzmUzjdHRZQDkMW0zwrOKn0SyqynZV8QTFP
 gxnYiPMi9zLoEzdSR14JsKJHUFauzpz+q0z4gvBAkDwfVKHYiNUKyhBiAPwQnYNrFoc+uONf6
 n+SCJvLlAgXr/ZdLrHBfUMWwcg3OouGwjzW0Q5JpjdPl1YkCo8zd5LHY8SoknY2L69IaQ7ey8
 mqMWNBTA9MqG0RLq/KoIZR549Wx3yvpE7CE03Q1/QSxNmYPBFMU98W7yvi8dl/BjwZ4LWwyk/
 MCRffe2JOCEpHaz5eJtQmqtoSxWGhEyuYtVusGWUYs8pxoxA7e3JMwVlYySTILtI/6PSSzwIR
 N47tsGJAZkjeboWl8XbQiYEsMWP2TmutUys7Wsdc2AvK0H6yoOOnicmTQCOCEf+aGadx/Qu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_080022_299174_FC73423B 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
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
Content-Type: multipart/mixed; boundary="===============7174453659819435164=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7174453659819435164==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=bXt+C/YPVz6wbq=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=bXt+C/YPVz6wbq=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

if I remember correctly, there is still no mechanism to fix eth0/eth1 for d=
evices where those have been swapped from ar71xx to ath79.

In principle, this can be done with a relatively small piece of code (not t=
ested):

diff --git a/target/linux/ath79/base-files/etc/uci-defaults/05_eth_migratio=
n b/target/linux/ath79/base-files/etc/uci-defaults/05_eth_migration
new file mode 100644
index 0000000000..d6b519d25a
--- /dev/null
+++ b/target/linux/ath79/base-files/etc/uci-defaults/05_eth_migration
@@ -0,0 +1,28 @@
+#!/bin/sh
+
+rename_all_eth() {
+       local before=3D"$1"
+       local after=3D"$2"
+
+       sed -i "s/$before/$after/" /etc/board.json
+       for e in $(ls /etc/config/* 2>/dev/null); do
+               sed -i "s/$before/$after/" "$e"
+       done
+       for e in $(ls /etc/sysctl.d/* 2>/dev/null); do
+               sed -i "s/$before/$after/" "$e"
+       done
+}
+
+case $(board_name) in
+glinet,gl-ar150|\
+tplink,archer-c58-v1|\
+tplink,archer-c59-v1|\
+tplink,archer-c60-v1|\
+tplink,archer-c60-v2)
+       rename_all_eth "eth0" "ethX"
+       rename_all_eth "eth1" "eth0"
+       rename_all_eth "ethX" "eth0"
+       ;;
+esac
+
+exit 0

However, this will obviously swap eth0/eth1 on EVERY upgrade, not just when=
 coming from ar71xx.
So, does anyone have an idea how to limit this to run only when updated fro=
m ar71xx?

Despite, while having the abstraction of "rename_all_eth", I wonder whether=
 it would be possible and desirable to do all renames in one step:
sed -i -e 's/eth0/ethX/' -e 's/eth1/eth0/' -e 's/ethX/eth1/' $file
or even
sed -i -e 's/eth0/eth1/' -e  's/eth0/eth1/' $file
depending on how sed handles this internally. These options would mean less=
 flash writes (although this might not be too important here).

One might also need to add the 'g' modifier to sed to account for multiple =
ethX found per line, e.g. 'eth0.1 eth0.2'.
I will test the latter cases when I have more time, just wanted to start th=
e discussion with this proposal.

Best

Adrian

--=-=bXt+C/YPVz6wbq=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1xIv4ACgkQoNyKO7qx
AnDLKQ/+MH+ZYq5JRxx68Jenf1DendSmPB9bPpHfZNwkFLJyP4ECfU1kGBx1YsOT
AMbrgcdVHDAcmgbobAQHlOfBxIER4ZX3Vg6I6m8O1IxnJnT9ZL3nISriFgNsmtcs
8Nn+BAsfyui5hyaJMj8C0Qo5EBCCj1Cb09IjQ2ZDPGZ36OQLwcakWF1lq0GcwVxd
fd2QAkGik/5mNmTSwbWwuJpV1NMOEHqUKeTP5gNjUHSrv0SeTI4j2IWu7pqsYleA
s7QyNRGeMBC0mm0gmbYD08leNCqvR4IJVbrHzQ0mdPXubDenGb1JsuAsbp7nUCAs
aWTwv17iNm+8C3cnL5MASQSFUk72x9qYakYpvPUySrBEWl4plsPpUizryXSoaDhz
67EYP1pZDEiNS1qolPZCnO+YCfUEosZ/5MCbIMbNM30uvHswaFbquaIadveVz9iW
Wue66CnLfSFKixvRcbjZg60yOhSs/qDcuC4wPdskIAEQT9eXze2lgUY9iUaOm7ff
6KBN6g6EMyddDLpqUN7mXd9E6nPI0o5PGtTPMHCSKnf/ZQYD0V5t8PtyWd4WUXtz
CFWLd3DMX0uuTZMiwpwPd3hE+l35uzqXhUW74Nq40whGfC1xO/8qoX913yzcSsQz
pUPUGrMMJRR/7lUGVUMKure8a4wkipf44eEGxcExCHdXcrA/ey4=
=yDqQ
-----END PGP SIGNATURE-----


--=-=bXt+C/YPVz6wbq=-=--



--===============7174453659819435164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7174453659819435164==--


