Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFC21B16BC
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 22:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QcLeyhgy5qOlm+gpllrbNmap5oavgIqfovEPsClb9aI=; b=Oxs
	bm3wFGngtfLisJP+rmcPHppk9iFRDbw14/oVCQxIG+Rq8p9q3nICehfHpT0FwQGAMP26Zwgqlszmp
	+w3K2Jhr7YkQVpgrbx/L6EBls1dXi1TNczNgXOfU9mC0dOOCpUBQl4RiqcdPLxKEULDM/WSXyPeCh
	CtGpKWoUX07OfxX26a6mKgyzTJAb2/Buz2fjdnViojl5fEDi3OKho0/rOmPN+h2p1sKuCMbe0qR4Q
	5jQ0tsNeb5/abDBGwWVme3+0prhAqJvjrPftEC1t5/oX7pS1bQnQLyrTA0ctOJNIFGjv6dS7cr+KH
	ukbdHCX8WYSnfwdgG75ZnlhxS6/uW/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQcov-0007so-8e; Mon, 20 Apr 2020 20:15:09 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQcof-0007rc-Ox
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 20:14:55 +0000
Received: from desktop ([188.193.229.114]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MDykM-1jYMZj3XFM-009xB2 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Apr
 2020 22:14:51 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Mon, 20 Apr 2020 22:14:52 +0200
Message-ID: <02ee01d61750$59b49e00$0d1dda00$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AdYXT4MmStxj3D42QtW/k5y/n9d5LA==
Content-Language: de
X-Provags-ID: V03:K1:8rCRVVKhVttdbzN4qHC4upTr2oCKgAxRsPRgbX+TV5mNAFzObTj
 pi0N1koP5ySqDyheIlTRsEQTWxfj90FFGGNEtvtgV+MfJdqja9HNstW1XoDJ8vkZkeIRwC3
 xwZ1dbMgCWRoZvP0uk9AsZAdfvWKuDOgMb8tGaduNkETJeCJzTrgBQfTqKCupBOhJYwu84R
 VHLoYiNXacQ/WbcBQC+iw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ljfhoBKx7hw=:tcpriVVW+VTnrwTI6SAZHQ
 eD3/A4GtIAB1lSftG01AvtVttbJQRDPIBl5sJlfW9l4fifgqauptiGoJxjYfn+7XB6hUL0KVe
 EcA8fir4xbicFwnvUVdEtZQo6ZNEhQGnLBu76nMuUDMOt6G6HVQAfB/c1RUgqu+4KdJj9cKO9
 42qafzCp3P0ocWi55Mciahc5DVID9ueES7NxB91EjxMPCZlC7302Yrfo45K0ljT1LkOvM9EWB
 +E1wCH8amBJvrqFfZnlam+zq087p0QyIVIxkPrd5Kdm6kldyoeHzmRtpxnim1rPBAgcm2RVx9
 vVIXorK2XiJ8r4ITXqo5lQi+Zn4Bz5SrCVN8gtKTXOF9Hg7+MilkbIAudWWXMmMOZMy6ohHxp
 ahKOkNMXkyvG01kxb9iXAlEZ1Jmit5A1KYtrADVaOxMspIGzSpkneaZJk6j38/6G7B252pKE9
 02F6TfySxgru6TELTmp2cYtWUdYxSsXJPuwp0ZYMg2tOIFiZQ0F056y/1qU2OwGDcjW1HcL5C
 Xy5fIBSEn028YVkE1rQGfqSnoP54hpFRRqk9UiA5qzU1mI6CBXOZV7GtCuHW2GU7LhrtZxP84
 NWYMOj5DImFKUt9GqYdV5tQxw4LsX8/7pFfhntTCwOvwFaP/2b1DSur0VRvRglTslrVMBGYmY
 UZspTAq/2jffZNaq9bpENsnIgrKp3AVEXn/n+Ul6T6GoxJ6JvIIySf+kBtdo4Ag83wBdwIHgx
 r47rVWCkS+KO/vattc9adrVJpRM3v0+SLeeXgfJM8OU43AsjXr9MkyfaGlqIuFCDE/xa9JMBY
 5xtphom3PVJY5PUzwDe34hHArh/WQxgNiwpqqgrFPM8wODGlJ3/Uk2rvB0TEp9+viWAPoDV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_131454_111230_287B9A23 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] octeon: Remove support for kernel 4.14 and 4.19
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
Content-Type: multipart/mixed; boundary="===============5205739640100638828=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5205739640100638828==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=5ZTCKlv1jH/fYT=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=5ZTCKlv1jH/fYT=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

since I cannot send a proper patch ATM, and it would be a trivial patch any=
way, use this as a surrogate:

octeon: Remove support for kernel 4.14 and 4.19

kirkwood is moving to DSA on 5.4 [1], which will make kernel 4.14 and 4.19 =
support broken on the affected devices.
Support on kernel 5.4 seems to be running fine for 1.5 months on multiple d=
evices now, while support for 4.19 has never left testing state.

So, just drop kernel 4.14 and 4.19 to reduce the maintenance burden for thi=
s target.

[1] https://github.com/openwrt/openwrt/pull/2944

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

--=-=5ZTCKlv1jH/fYT=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6eArgACgkQoNyKO7qx
AnDVWQ//Yd0eH8LOGOgBpqtVcnWmSj2jFdi6e6s/O8wXBvxxVT6vgDvkNtoLOyLL
9uWN9dZ0zefHKy6gMXyab0mEU9fkgphwrr4CB2YVqDO65DK2tu67W1hlE292I3wG
eVNPPYN5VD8bndeDkekwESAp4fyBb7+3tIHivjDnLrQhFWZOPV333+jkxxftTyb8
mlXUD7zmFUDDWbgrNClEP+2+GpcTgN+WnZbVLWD/JYjecn6DbhStU7Y+BDTGTEl8
5HioMVj521qCA6PjPG3P4hGcAm9Z2vxSXMFmXd7LGU5yTRztuDuNYpfjELk+mj0T
90N83ODcj+08Sq8Wk8dobz3pTwdxw8MLfgf2JSBh2jisYmhRHI/46hGM52EkeMe6
eHkKcrKq5pD795NJK+J2wtMSPppARXeh7cM1geuti93nye2pBqkGNhhq06V0XzLt
/L9e0Z2GX3+FIEk4inpX/41Lcx9iyslEFi34BucEoHlXc2THk9RQvQ1vLH8AP7L7
6/642UHofcqOmWXUdtx4S5rX3wMlCHSc3+nw6Ej9+YN2o+JWJt7k9Tb0jj1d4sbP
tJFVnVjsuk5iPEonaaAAx3GmB4fl7eX1+Jxc31nLQ9cyzWF9Ik6s7E8pi0P2QpDP
1Z2ueMhbte3K0uuccnaJS+OZrqB88sv4N4HBXHqP4g5uqB9tS3M=
=NWHB
-----END PGP SIGNATURE-----


--=-=5ZTCKlv1jH/fYT=-=--



--===============5205739640100638828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5205739640100638828==--


