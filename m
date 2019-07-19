Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBF96EAF2
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jul 2019 21:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eJ2khTVgjg1koevzXL4J3ce9FCScAuU03EZ0WR/B1SA=; b=SrL
	BRj0+ciejLu3RLqdGsuub6HzYjDV4vyIZSU8QYi8H/Q2hpNme8A5N3CLbEgBcF0EW9sUovGcDW/Jh
	TTF7Bp44pqviEAkKPAPLTPDVv13wjYYQCJd6OlG18R1PnL24N+57fqTBmQte9AluZm1QL00Gl5/KY
	4+sPhUJQmL5QhERJ8lBPTM28A6H8gLdlpt3jTbPRF8R2LBOpoqvTb4aapGixdftSDukHYCJ+b+Yva
	GRl2wHyT9JhTeFrznNi6sMtZ0PkL1LutQUx+fZOGMAmbTY9trFvXAh7cM2SnYB/NNP6Y5ICcArhhH
	2Ww06pVDXnBhoqxZY0BFW+AVsjXwL5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoYGX-0003fM-BP; Fri, 19 Jul 2019 19:10:01 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoYGI-0003ej-NO
 for openwrt-devel@lists.openwrt.org; Fri, 19 Jul 2019 19:09:48 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MiakT-1iKIAk17Id-00fgtA
 for
 <openwrt-devel@lists.openwrt.org>; Fri, 19 Jul 2019 21:09:41 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Fri, 19 Jul 2019 21:09:41 +0200
Message-ID: <01c101d53e65$847ef730$8d7ce590$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AdU+Y+KryfLzdwpvTLW19X6oIlD0/Q==
X-Provags-ID: V03:K1:VTLa3PdGvpVNPRicQjSqtxqI9FdP9D97KTNU2qHKMkMAk3kGPa/
 et/jwpZ0DoGU6jIKlqcXlcBF1MEVL7PdTaQzypUO+lJ4pN9e4hf4xsDM9k3E55i9MRfGDpV
 bR7/2jLYqxhrT8KAIrNZh6MEf/w9z6UOTNJ5QPwDZTF6B77lKplD3DIhrskDy77eBjtt9jf
 /YCQSSUpEIlrNMPVcRiZQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qgQsKJYkJGI=:d+sqIImUrP1DSv3ri1ynTB
 fqUJf+T0H9dmYz8vDl0p8MfX0/aeimkhiIGm9J6I0dUoJamkc0ic9mWuKi1ZARuHsJnvgFsQy
 tOGUO1TfphJ0EWQh8VBG7TU47gtp3fcMNL/fT9J9zRAxmSWtHZBcT14ttMtcbuF3wK+i+9E8p
 a7BEnIKKhNu0GNS40Dur+CAuXdIaRgztic+SL7/WiPutFu3Sxk6Gv0NyFpYlvps85OgQYYanF
 7PpmpIJbMfmomKD31aZHTKPAGtXZXJeGtLQ7RHxfDQD5XQiZoE9/+wXKyKnjCZVAEBOs775Mx
 fRJekZvtev/ECQZsxvCqBUev3S8w5XiABHdtPys8Jaw4tEwzzGzD8SgTDyVbe5KbxQ82ONkNZ
 Yr4ElqHYdF7kHfoncTqWWL4Ewl8QdkSJsq877dB4Pj3OYThiapWv+5wozeZLbXIn2UEpTJPLT
 zYpgN2lZQe9YoxLwW53W7+wvw+D4PapTWWYUYvnXV5hAYNPbvVIqrbxtKmRruQugzNmfIAZ0Z
 E0H9R1cy/uiaWtr6RTI2Jj1cgaat+EF+0gPFPSR1YZs255tvv0tWPgzVZJFMFIElGsTrbVPSK
 UO7X36cPamrBJLsBm4ZYSgCtRhuHvMe8EJtfYSfWaOxHX4oceApyyPOOz5VHmx5dQ7rPtDRH9
 KFnKp0ZC9ySFo7EeVSJLzKcM168VGsvUj5HQmvmBJQQKMMfdLH1ByFkQsNWSmYSdi2bdKzWyI
 qxOTexs88Y2ykMUWaryDVcwj+2EKd8arlm6msOiKAZTV95E2SMfh5BVgCM8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_120947_062193_8A525FBD 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Trivial lan_mac "re-set" in 02_network of ramips
 target
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
Content-Type: multipart/mixed; boundary="===============0300518319457684361=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0300518319457684361==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=ybBg/cLd2pJ0CV=-="

This is a multipart message in MIME format.

--=-=ybBg/cLd2pJ0CV=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

when going through the MAC address setup in 02_network of the ramips target=
, I found some entries like the following:

edimax,br-6475nd)
	lan_mac=3D$(cat /sys/class/net/eth0/address)
	...

hootoo,ht-tm02|\
loewe,wmdr-143n|\
unbranded,a5-v11)
	lan_mac=3D$(cat /sys/class/net/eth0/address)
	;;

Even the default case does that:
*)
	lan_mac=3D$(cat /sys/class/net/eth0/address)
	wan_mac=3D$(macaddr_add "$lan_mac" 1)
	;;

I do not really see the point in setting the lan_mac to eth0 address here:
In the end, this will create an entry like:

config device 'lan_dev'
        option name 'eth0.1'
        option macaddr 'aa:bb:cc:dd:ee:ff'

So, if the address of eth0 is already set, shouldn't eth0.1 just inherit it=
 anyway?

Note that, if I went through the code correctly, it won't set the address o=
f the lan bridge directly. Just eth0.1:
https://github.com/openwrt/openwrt/blob/0f6b944c923537b9bc08da23f363b409d1e=
564b3/package/base-files/files/bin/config_generate#L88

To me, this looks superfluous.

Am I getting something wrong here?

Best

Adrian

--=-=ybBg/cLd2pJ0CV=-=
Content-Transfer-Encoding: 7bit
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0yFXQACgkQoNyKO7qx
AnDxhA//TGU/a1PdIM3FgsIqfEgGzQhMFqgFxqfJCKoz6gakUPKma7PW5TjfQaKp
OMMOUn+y4zzIg62K1m3q92ki0eZP0/KR6A+RlKtgsROSz5I4CdDXW2864Zg39Sym
51eZ5Yrut0D5RCQqYAlr3J+B18c1Il56esBxJhxWdMvme3iFInZXMqmAkNn2AbJr
sMF1TfTaRXFIsvc3tcNrBooftUpGqg6mBKBs1l3j61lHBshnhUGF6T3LxGrKAe1Y
HNC9Uo4UON8MejQIFEIlop0DjsXRkqCpVgUWPgCA+8xFBQyv5veETyVVAlvPI1u4
ZazwYe1gK22c7z71Pp6+pWtn5rA7HhSh9VsMSVqsJXFbGItbk7m+T48fQnnlOiBK
JwLimj2d+GF7uD/xYrKkX+u00uSfc4+G77qaGoVp1PDWTLMMfZYSEi4c+FQgorM9
ES1uSVHkDBIQVW7L2pd4koShl/cIejhCxGOHYuFJc3g5B5+hMrrttp0TSpgj84y3
H+ZYrxAaKxnjKfOQZUMfe384Tb5mTnkqG4De/NReQ7tA0V4wkS5sw67GhSov9WLc
39ACvt/TOlMPjRkQDwttFztcGoTlXKT8A0SbsKE6rqTWbLujxbT8ZhhDo7hpUxO+
5/cYLAvZI8JudvLOPWx4LWtwen/TghB+1uK6eCyoMk5yYn8Vh80=
=Rn8Q
-----END PGP SIGNATURE-----


--=-=ybBg/cLd2pJ0CV=-=--



--===============0300518319457684361==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0300518319457684361==--


