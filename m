Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343514E682
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Jun 2019 12:55:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uO04SfQIojLgKYKyoAkOUBfPxK3Q44+14d7Asvps5yo=; b=AUd
	B23iiMsmHAYw2l81s3goQ++HkYGT2YpNmjne9MTdiqHdqPo/AbZGn/qS4n0KBB3TPU7632ZCWYHHK
	5lRmuj5BpBAPwugC3jg78b/4a1RMzBOEVjHs96tqtZRFO7T6FPnxSTlKp0lTejmGtuWodzYeKFl/V
	bmwD489TLtlwyBM5vgX+Bsg3/zOQYHr+GELf/Bl4OcbfdPV1ksBv4jKVDZ6cD69wHxWLCZmZBKn3G
	XZ7EGUgKw525gqvkhaW8FtOazbl5cbyphWPEQ1bz4NO4S9PnmMO1qMVh45a1ydo0E1ZYr8Dbjxc1h
	MTst5njlyzTRNvRDJrqYe4ZlIhFoyIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heHBr-0007u1-O1; Fri, 21 Jun 2019 10:54:43 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heHB9-0007Q2-EC
 for openwrt-devel@lists.openwrt.org; Fri, 21 Jun 2019 10:54:03 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Mq1GE-1iR24e3XU2-00n9PE
 for
 <openwrt-devel@lists.openwrt.org>; Fri, 21 Jun 2019 12:53:54 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
Date: Fri, 21 Jun 2019 12:53:54 +0200
Message-ID: <01a101d5281f$9eaa8450$dbff8cf0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AdUoH09sgTfjOZEqRsya8wI7C+KbIA==
MIME-Version: 1.0
X-Provags-ID: V03:K1:/jMEMZLg04iBzzttUnN8eL66o62pPof50ASh5ExOqtrNUtC4LLH
 HfWj2P1ZLoGSJuGoBl08mykIOS4NfAp7JLEOjCZOIPC/L+p71r2eey4peLZvHZ0+yosR7rX
 uubLPOL2iQpsHHIUruqit7/rdpQBpWMPBTpfXstzoFZOj58lYmDJEpUWq2zibJGySR7uCFS
 xlvKNVpCtZWbS/OvbI5SQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BDihAI0Cmqk=:WxZR3jnzXpPTN8Q3lmZJQA
 Wb2MBTDpXvRcYAoTb7h+eqtcqcuiC6xNJpXMMcB3dOy3NKFTTQC1uJt9MUECK4UIAgOrjxYVv
 BXqZX8pvnLaupvzhyKpk20pIEe702oa840En8H+Qe1K2i9BOTOBdTPet21LwIkS6/1VTurt0Q
 a3350Y1AayVSFuiKObvtffH4PPwH/qlC4bHBHF7AHoKzsjc3SGzmQ0YgrZSuD99CzlZCwZcEf
 X3OdxR4genArEbrvIzYlGVPEEaucZ77leu0k5DywSHATjs2APTY0+a1FxxpMle9kM9k8+yvIE
 7zJspLudQYO9NO+J4BcvRBeKFEVeWfYqj7ibitONepfVrsfJwMGfFW82gaQq5yTTk9eZdtzVT
 Ml4j69QMVoMHkTOIXHxUUtPHvZONMaeAlXLXgwixTFXiZGE9iFZIG53NbpKNXTsdoV8ILB93i
 nxSzd8dbFE8gYnGFjqUxfTzOnTWocSMIdJqnav4mAeqAnNSwLXiI3rECjeTHqGGvnFlAfwH06
 8Jqd9d8GooJ82nAb6lFxpfKSQNvDWq0q4DRHvk2p18J4MZwe9BiG8H39JF65xKRvZmrq95T1O
 yIPpCXT5K9w0PFuk7R0P5gRPj/+C1A/uMULVYBUq4O/Xk7I7PJVZtfFQ+kjDcRraAQsLAUCaq
 hsy3Ta99FaOvN/Jjv6A9gnCWlXY5oPE61IOktS9vNSi5e5/hbExu/wQPh0kzLwIR44poh1bhM
 9WTTYok9RaOMBqRkbWgcubZbZHi0zSfw9W1Tv8f2evA2sUjaPfTb/Dvm8Tg=
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_035359_812026_383C3835 
X-CRM114-Status: UNSURE (   4.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] LEDE 17.01.7 and OpenWrt 18.06.3 deadline on
 Friday
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
Content-Type: multipart/mixed; boundary="===============1975415175332862152=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1975415175332862152==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	boundary="=-=xS0vN1kQVeqA8A=-=";
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=xS0vN1kQVeqA8A=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

there is a single PR in GitHub marked with "fix" and "openwrt-18.06".

https://github.com/openwrt/openwrt/pull/2093

It looks relatively trivial, so maybe you want to merge it beforehand.

Best

Adrian

--=-=xS0vN1kQVeqA8A=-=
Content-Transfer-Encoding: 7bit
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0Mtz0ACgkQoNyKO7qx
AnDdfQ/+OgOpjAfQcXxNWHS9cycE1nPZz3A5fMmvmv0b2Y9bxBWjZgQNcc4AiTEC
pqERW+JxZD3DaxmPK7tmWbVoz9YHYkmzNP6qw/+X0JoSR4lNlUr8USoV4+lueIjY
91VNMd/nambKFQug9ghJEQ/RHYIe8d+DO1kkK6IWAqagBwC/jizgbY6LF2uOIrrZ
RPm5nsATzMx1LJil0ONv8VRAAdrknyEOPr5UWSFtOl7mpwgcrZv1EbzT8lISuIzt
TI3++NK0pDhkcgH3bWZSdwIklO78YEe96hBbbZU1x4Y/nHuXlJngpUj8/CJy960L
P39i4kHttyqNu1qDT4qEQSduV61NH3Rz6CXabVXj5rzbpZgSu+I/MePnIM4CDwLC
jqYnnELxI4fD9UvpVPc22H2KulZ89EzeVbArEX+6+0aHAojCEQU8qV/QuPxbZVwZ
tATDb032ylMLoXbJqHa7fZify0tqfiD+tae2JqRo7zuiPdkIrYTOFNY/aDJCkAkx
Jo+d5Tm11yqfMbCbO6zyT08jT7E6N14cjWqBCdvPh2/SogULBnYsCUasg7FtEVBU
wK1F2Js+VRcwtULr/uWkYPOT+EDb8LfxFcOL0Z6L1L1YrX2zx3eqkuPIe1uaKgUW
Lya3YQ7/JQsAjo7jJdAmy9l7/T73dPzaBjAjhV9OO/rugdV6FJw=
=yVfD
-----END PGP SIGNATURE-----


--=-=xS0vN1kQVeqA8A=-=--



--===============1975415175332862152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1975415175332862152==--


