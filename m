Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF18F05BA
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 20:14:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=l10CfTdfD7kKZHBDBLwVGNvdlMQ1sEAWADtl5+K3rRs=; b=RMx
	tU182bgirS5zLvVt5jzNKGbjwzgHhed2yt7ezf5lGdZVpoYyqSrDeIWVq93FjUjSeyaGR/kTIEN9P
	j2dBrCk48GtlkkfbebtGRclIyacsjxGQmWHzKvzA8KSiDjlVx8guaqJ3InxfqhNetBGQ2cFfl2plc
	40yENc7NvRnnKXkfGurWE+SsNc1jBAVbEuWmyMR7x9xg88UTEjf21yFiuc1FLETj+4sJHnbiDzGet
	Hra1iSKrd66nN9JX0rDSqxwB/szzuqdHarZEd4WDy/OffBOZ9I0Frj87pV2c/r0H4T3pzcLFUeIIQ
	O84iXcVYoDoioAqM9LeegUjApU6mXGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS4HN-0006W1-LF; Tue, 05 Nov 2019 19:14:13 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS4HC-0006Sg-AA
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 19:14:03 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MfYDO-1hzL9s1WCu-00fyne; Tue, 05
 Nov 2019 20:14:00 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 5 Nov 2019 20:13:59 +0100
Message-ID: <00ec01d5940d$2df34120$89d9c360$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AdWUDN3VBXZiv3VrRZW8yEQxIVV9rA==
X-Provags-ID: V03:K1:Ww0GlWQs+b2cDAam7opF7VOPZKG8vbrxE3x3irfq9I3RCyEfT8M
 y1Y+qAZaCJ/ou+9Tyi6BZcDIPZ5AYxiGxYJzcMsMpYIepmgFQB0AMDsIIp1/jQaKmR0O056
 gDPna+xC4sAQsLZncL91ymuqyfDLSqXJGDOO862ZO9UXutnCKp0ix4WkZmKEYJyC0922+Qv
 yCTpVVRZwH1DLh9YvHMuA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lTGCFL7C6C4=:cm6RMSq7E9/m6UXCJyxNwC
 xbarwtO0m/hDlRVbSW69f92L2fkUCxDm0wfy9L3Ib/dIkOQIcL9xlaEGwsQU2FydNIZ2jtTyN
 gyDuW9Jp3EWgHViaohc+gXp4Y/NNk2PR5sVf57b+qy65kuai45yE1Ro2DQ4h3WuZZgPM312B8
 2cUngcI0NxQ62Fxf4d8IlG4QtKgSzDQVW54Y+YWc0IOSpy4/oxJgmIoQE4DHShDPgQ/14WSJ8
 vICqaIfeJpo7dutt5VoIh5JULilPrwtJFTIqtOpufWzQ1l7m5VCsrP/Aa5CO67PrHLkeXbSPi
 nCfAFJSVnrjbfnzfxzZH3uxvBb2pWPUtWa3KdpnDxZICAHriP3g+zcf8YcUA7KseL8OsKMESg
 OvzsEL/TbQZV3LKD2JxuWiPKC5CRHw5uyYANqIlIEzxFbsvv/0eI1vX+g84irkHnYXN9+HeNi
 OBHOspditgyX6huy6LkQSKRVgfo3DDmMb4mso+cXu7yICVJdGin+KrdiUibTwvZ0zLNnEdWhK
 MvomHx49i10EE20s1KHM+o8mTGnY6YkilIe+WGqwQZP4C77YcRtgYZH/pVOaCfRNy+5zaFnjK
 bLv84qzSQkbUjWI3zIgkmk4Ydv0QUd/hnw5AmBP6ORmmJ6ZZ3+nbnr+kBgC3rG6QlZFlAM8E+
 8RaAJahVLpRA9K23sLLEIW+VG6zw5AXhSo1RohY8imJY/38CVcMuzviOyNsl9WFwMDgjCg+yN
 1rSzjB4SQLJ/5rRcYiAinui7obegofeaptTpDR67T9fUx/+lKCyZFmTrjWTfZcEJOZincJQmf
 s5X88mZzvNGsyz6i26I6ED+fBBPxejoHSDUd+Yfkl6ivu8BtVU39BeaYVD/hgwLXV10uy7jPs
 +8zl1dQpHUcY17wtCm51/B9b5q2uMS7MTC2fTucEs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_111402_647618_4E00128E 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] ipq40xx: Bogus IMAGE_SIZE on asus rt-ac58u
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
Cc: 'Christian Lamparter' <chunkeey@gmail.com>
Content-Type: multipart/mixed; boundary="===============6407020498064174229=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6407020498064174229==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=BPXWGbdImYLIB4=-="

This is a multipart message in MIME format.

--=-=BPXWGbdImYLIB4=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

as stated already in the comment of an earlier patch, the asus_rt-ac58u on =
ipq40xx target has an IMAGE_SIZE of 20439364, which cannot be divided by 10=
24 and also does not seem to
match anything in DTS.

I couldn't identify what should be the correct value in this case, so maybe=
 someone more familiar with the target could have a look and fix this odd v=
alue.

Best

Adrian

--=-=BPXWGbdImYLIB4=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3ByfcACgkQoNyKO7qx
AnDp3BAArtGUd0xHR20XyUz09s3wsXZ7cqXxczHwZBOggg0sKj6GFBAMC9B1WkxV
3wdMIcu5s5otL4Q+0OZgcmtGu5FQeEjqb+oeSP4BRagW4o+YlTso3ajzAiDP/aOD
CTJvhfNiyX/eYHbSiiv2JS+VMQMTzHOBBszAF8eK2LfxyKm6R+5T3TlTlj2Ih4sZ
3Nv7qCdmvrZKb/2nFkdzx/li7vYsWml/ryZdYKNd5CG8e/5n8nlpn5SAZ19BnIyX
MxNcdJbTj/BbVvG0VvKadpD7pCTc5fwdAnLgTFeknFJQDgk/eZy7dI86Kht7/Mag
TvmsaYsqe6BIEq1gcNU4fxdblg6qoO5GHZbO5KlJgaTS7MCNGYZvx/xfKBCyr9Nv
bhTNtaOBCCWabrSQJ+UKS4yAZSrlDy79SYeK8E1iZgoUf2DfksmEQUHpGDQEyJmv
RDY4skUh2OcvS7yczbLEZkJDFtxIsEf+Aeo3f+ka/YJEWT9ihm2SnqvUu21tNg2Y
NJACFwlUwoCmtHMj+kCO7c6lMMJ6x+in7fRNmlV0nnETrVe2xKeh0cirpr2cyhK2
fz9+aiAeQ/cuX3Pb5joIP4LuLzbwrs5c+guFFg2ifDbCM6GPVhTVaLoPNjM4eEOt
w1pwXRFv/tUEBRJMWljG5fI3ZNxMdEvZEanPEvrMHpdi2lnFrRg=
=Lkba
-----END PGP SIGNATURE-----


--=-=BPXWGbdImYLIB4=-=--



--===============6407020498064174229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6407020498064174229==--


