Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D90E4890
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 12:26:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5a30u8/ruyZr3xFR+6G4v1YtALqZtqLVXYsIdhiMrQQ=; b=ZeuPGRXDBtHvE7ZpgSg8DxzdN
	9bzTmhTj0bVogw/kIuEJMI1ehXbotk/JS8xoXESQpQcfL6QWPuam3CHP0joMCuBYzLHrK7QpNScq6
	7Ykeht/M2zsnZxltko3+PHUMyTJtXkPSQGfWn5RUHR5z37hT86ToECarXlZOM7wJ09yCH9CpHKMmy
	O3yIWfJq7Mznqj1m5HgQBIz0g3sTQyFSUhN1SddJ3z69y+vqFXem0UsmGhQrO2Kyv0OkV/NShdt9E
	XXc8A9exgXiaTCmaOHXs9k0IJLoNfCNmSFVPkVmkPZ89s59DE1DKHw87E1aXSOhE00CzBjO1RymIZ
	v4nUMImKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwnv-0004FI-DO; Fri, 25 Oct 2019 10:26:47 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwnp-0004Ed-CU
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 10:26:42 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MHo6Y-1iBLcS41x8-00Ewju; Fri, 25
 Oct 2019 12:26:35 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <vargagab@gmail.com>, <openwrt-devel@lists.openwrt.org>,
 "'Birger Koblitz'" <mail@birger-koblitz.de>
References: <20190924175256.3845-1-vargagab@gmail.com>
In-Reply-To: <20190924175256.3845-1-vargagab@gmail.com>
Date: Fri, 25 Oct 2019 12:26:34 +0200
Message-ID: <005801d58b1e$ad47a0d0$07d6e270$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKXb0I+40h/MW5zwaKnXwIM8/SB5qXnXhZg
X-Provags-ID: V03:K1:3bGkrn/cETklyrHh3b0teTf4RXAx33OHYgIC1Zs/LW6BOrqcHAT
 9B5W0ogh5B2y4nkpFjbgoA/XsMuqOf8skA2WwlCh019674x66fkmq3AouWQRz49T+wCGvEM
 sqHjNsrN3hcm6Krw5Vz9JcveygeHzgKsPiSTfTdQCblKF0/QObUOGztbje+12FXwtt2d46b
 iPJmGX1VDXYNTD0vneyPw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PcSQvGh+Vas=:3KYbshpBxOGFw0PW0xwDis
 50BW9Sh/PTV9fn/5KN+Uno8u5BHygHadxB281G4u6fWDqTwixDYaD0ncV92raxAF1vdv3758o
 BgBHtxKcy10OzDEeLEVl/3OAVHmTAK+ZDksUERzrpkSYRBXB7zTDeoXuoxs6SLQ87PX+Ehn5T
 i89coN5wqaz6qaRbFWLSaomtqsVn9q/A17nrdI+iCcFZoYYlxt8QSuIX7yD8gbegAJVPupgKx
 uZiEDS4EVg4yRQLAOY2AU9gcUJgnHsYzdL3VRODPVXlBskb4iaoZJSwrgg3CXLMHzmM5Lnf52
 4sVWKPXr8r+zIRmq+pX3IH5zXx2IAoK1cA5dbU5DWf/PrP/AI6zAecHkg0+AiAFucQWVcP8cS
 IxkUK8nSdrEAjuX8Kvbt9hYwMQlVi+w8gvxWwsaUT3fOmqYBjyr2Vkdc+sGR68vEDFS6m9J/n
 lghXzZzFlY/mNKyjcujAea2AlCIg+9I3lUJsJL6Ug34IcMf4UzXe07lgMy1iwGvs9Qo6KjVx8
 fS+8dRZ+IICyNKiCrDJi/NeTEl2Or6VggM/VySInXIBh2IUF9Ht+7PG0vvcjxqZ1jtafFMezl
 slsMAznkJImotLvWkRWXwED88W1oE3K3pIKuSkz35nvQtnKFHiGYObaRWxsLwEaTmcfnF7oIh
 qemIg6BC5bOVKwVs25oNPgj/XPKlCwT5BBWP+DglrBqAHep93dMMuMfcsV64hqBM9Gcdz2Yqy
 v4gZ7ew9bu6UjjoFmOHqUT4U6T+lmVlzMvV7KQy1S7j56WECxglm4/2oADIOpN1QBtXqBCv12
 b1HnqgJ6NkVoC6PgnEzTiyahZwYgdAPv9UfyDts4q7fsjK+a93ULaWODRY6a5vXlhx38xS8Z/
 /Skg2Gsoel1iFIdUn1sdjHKMjTzXKOCdbGrj0UuHw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_032641_716792_794CE29F 
X-CRM114-Status: UNSURE (   4.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Asus RT-AC65P
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
Content-Type: multipart/mixed; boundary="===============5491587329592846874=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5491587329592846874==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=aVBbhA+poanGC1=-="

This is a multipart message in MIME format.

--=-=aVBbhA+poanGC1=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> +		led_power: power {
> +			label =3D "rt-ac85p:blue:power";
> +			gpios =3D <&gpio0 4 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy0tpt";
> +		};

just found this, set for RT-AC65P and RT-AC85P. Any reason why the power le=
d has a phy0tpt trigger (two WiFi LEDs with phyXradio are present, too)?

Best

Adrian


--=-=aVBbhA+poanGC1=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2yzdcACgkQoNyKO7qx
AnA3pBAAjWhA4RC6epAHDnrIwKBGo7VpOmn2QIDOnk/m1KqnV3zTmmqVJcyTwGwa
g3iSHNCWusKmn8VXOq9eww35+YIdLzp8ZHQrBwCVhWgUlEdPdroDpaftImmenraT
AN7ShKgsVJWcsKesHF3xgc8OF+MmpiJz+rb44dpgpzvOt0Bm3siVVuS45n+AZ4j1
Fal0bHdS3mYiIb7Uh9TUCH7wX3ss5lMH+KE5sHIF92bt4NnojzUXcDMdZ8nPcTh7
o15EPIo/11JgNHpgo92WmjKhC3pmXDMgiUmRR9KCcIFKE9p74dQuqmWKS+zfZ+WU
40JBuLCwgyjK0dQP9WLp+U2Z3kMSeZcRPmoXqZt2h01REDq6DwrdJDAyqnSKVDn7
8IDXDV2UNnZ6z+gB3l25mf9t9mg4exhLoRFIRYaimn72QhHOS1Spq+MPL5xc4gMt
8Rzdr+STy9cN2U7LXwLZVOvhwVlrbpU9OFwacvlVIpkYI0GLvSEwn4lfu/9PCnrZ
vtzg8ys0ceDTh9T2AXoiBNva4hA3TBMi8iEdxyAJg0KG8VE46XBULeESwcrLeTQB
DjOWLnelLaJmqp4jHsL/QkHozlzdeQst9gHjXe234fMfs0YuTeapFcJ9EA2SqysC
w6sKPqzELpvDTzs2Wrwp9Nq/ANQINsVs23WOXRboDRgGC60EZNY=
=UXXX
-----END PGP SIGNATURE-----


--=-=aVBbhA+poanGC1=-=--



--===============5491587329592846874==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5491587329592846874==--


