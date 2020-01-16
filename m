Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0CA13D867
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 11:55:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v59jRWbda60cYutzpgrmrcT7EO5rFm+DwgqXOLyTtIk=; b=LmXVT+6WbNcY+BunzuugLXBDF
	FHqmTdiEnGdELlc8pIeNKLBtCP8sPBcDgoIBKLER6qddFRBep/4n8Je9DV3wall5MRnnuDVfBYm+D
	+0w9ORJEfjWdgtCdwj7KKkZsus7FGvkXFu2XeTfpRMzWxPtWubKzauTFwGp8jf6gJCzCombVVJ72T
	mxbSHgQxXWUn0+WyDlJgH2d2i7hiqc5c7kJTbXClcuPBOddzE/B4ehMoIJjn07xCXzYBieA+xGD61
	UMFs9grEN6X/TnxBBw6VfEuen1I69spc/P0AxNWRHR1IigA51M2w99rgBzn0+jRHOBUw+1wA6yoQ4
	2tUzIxV4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is2oJ-0006vt-1I; Thu, 16 Jan 2020 10:55:35 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is2o8-0006ug-3i
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 10:55:29 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1M1qfu-1iuFj30L2u-002I7E; Thu, 16
 Jan 2020 11:55:09 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>,
 "'Hauke Mehrtens'" <hauke@hauke-m.de>
References: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
 <20200116100514.GB84286@meh.true.cz>
In-Reply-To: <20200116100514.GB84286@meh.true.cz>
Date: Thu, 16 Jan 2020 11:55:07 +0100
Message-ID: <008101d5cc5b$6b44aa10$41cdfe30$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQELzBEOAGhwSqtMY1TBBYNrt++LPAIaC5lHqXBL3gA=
X-Provags-ID: V03:K1:1hnSX/WNQFs77QtkYJAAIAkcnmc+Be+JSuPSNaCzj4ZNqpxYV4w
 WxydQ4a+5+mbCU9P/nzR8jPxXqCNmX3QAfHCydoWgE0oYOPPhkOt9u+3ETZoctZ3xhePgvu
 cx+FvmPHucqS9YUOz4YpEVF1lyzts3C3rQrsVEK/WyJPLwM5zy2XVF84fFl2FPbxLZtDG8c
 8m97KLZdtczuFyyMFmNCg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kZE7qgbb670=:W474Ddx7haS1TQLrv+LB1V
 0NSOlkYEZnj6EN/RuPrDInALE2whM1pJXuN3Dbm2fHh6lseDwO5GBJwFnEVqo6fx0RW6lt2NA
 /xA/rHhD/42zx5JxUhMziEh5NZxjWLoG3Kr6BqZ8bxSm1/BNv+Ab1jaid+ZXMbh/60sYEOL1J
 M+UERG3IOMimK1yRW5uNmITTxFA+Cyz37ikUEyVZYB33zkCWEovcQbelc6mBuLh0xlLo2W01f
 RFZBosYUOf3DmUtH+jbkJ8e4o9bS8L0GMIHx2oOJcfl2gtosK+lIQxqDV6VMApQ0Dqoe86izm
 YX1LVEeTytv/eRWB8GCY9Hqf19v2cruiFwARb1u4xrwtnVjg0pEhzOshFBAJ9wLR2lyASc16O
 zc/tSXuqGIa8gotDzHBt3Tkb50Aaw6xDkkf1JMiHda2Mfs70y3DQfslnfFYEC4kRcTYfw/4IH
 a/nfLoIJSMWRWRrfRja5i/4b6oMCOIL/PVus5op8Q4GK6A1Y/6XIukMYvCB94jcXgne8qM5Rg
 izJ2UgbhskPFWhKcZW7yIF7IaG53SsLvj6ybe8bEBrR4/R514bI0MUAGJOXOeA46evUg+ZuSL
 dZzHfODOoV6z/few0q9GIOhJNJzi5txsRoFXmXDYfhnJs9J+wJV5Q99LWaQVrRc7s5/ohrIkw
 RbW1pqvC56UYb2+uTLmYQdiev3/VekA8+NzwC5Ly8CbkXCB8cE7TS7m0OVn3wMR+1eb26G6NR
 g/aLrbFr0kIkIvIJbvk8bStVDH3GojM9jWeoDCv8Yeb+3kf+gVd/73Q7c+tDkA1KqVexPB0s9
 rUOtXZlAarSWRzLdobgP6umpYtFdvdutssFD96FR0KAtWNs2RyYe+T65g1WjpaNR4w7ue2eDR
 MAeZKrMNhcP6+nP6TsjDQFiZ6I2AsKX78FMPCxX1M=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_025524_452599_9530E375 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] OpenWrt 20.X release plans
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============2999135146363183276=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2999135146363183276==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=C5ydJsA+FZVpAy=-="

This is a multipart message in MIME format.

--=-=C5ydJsA+FZVpAy=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> Does anyone else see any other topic which should be included in this com=
bined
> vote? If so, let us know ASAP and ideally prepare the text/voting options=
 as
> well.

while I wouldn't add the whole auto-deletion topic to the discussion yet, I=
'd be happy to ask for permission to delete/auto-delete the EOL (i.e. 17.01=
) bugs in bugs.openwrt.org:

Headline: Auto-delete bugs for EOL branches in bugs.openwrt.org

Text:
"bugs.openwrt.org allows to assign bugs to a certain branch, and currently =
we still have a lot of bugs reported in now EOL 17.01. I propose to have al=
l bugs reported specifically for a certain deleted when that branch is EOL.=
 This should be accompanied by a message to retest on a more recent version=
 and resubmit the bug report for the new branch if issues persist.
This is intended as a permanent rule, so while this currently only affects =
17.01, it will apply to future EOL branches as well when they become EOL.
Removing such patches might be done automatically by a bot."

Options: Yes/No

Best

Adrian=20

--=-=C5ydJsA+FZVpAy=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4gQQgACgkQoNyKO7qx
AnD41hAAvllAsFGeV0mkb+3kpers7Bxmdq+wwvCRVD23ZI9BBhwablVwSnRqJbNr
EC+veTfGfgYq+G/ZLkZgDq0vVa/VB6jvZvMb5P/Aa13qd4fiBXhLLkqWToS5mYTD
s3LDywQY4USltznERWOJvzOobpJ+6uvfnyCA0WrqQxL2VODcWYELsLODfmAL5eGy
eFILuWlYK303E6YgP/3hdlLP8lMeVS3x69P7xUT03iRlsH+fFGi0yfzd1xNNzJKG
RFgJnIcaLRFuIiOSzDrkiP/rR9rOSTfwocySCisj7XwS+5cTCEU65YquL6keLExm
Yf1gIxiAwWEEGYrtjI0OHo0pnHxf/aw8HAz1fCLQM9f3X8q3rsP6QR9gzQUVxbna
hnstSBzjMtEBD0B+asSclaPUVkfJjt8lhX2u/kFThRYEEM7INIEhbZ+PNbGFdDLP
0rhUUOm9v7cZS/+Wn+UimHkhimtmqLboMXHmvFfQbMztQ9RhsUhRnWWKyLUU/jWx
au4HuPV14mVYlif/6+o/LUfFjeO4dPeLYsfZwJODgfaWbOcuYH9gpuuGPTdudu89
e+IYZmwnNEB3J0d1RiUlYjixr8sB2DvoEevyLyq3iCgHasImNLNzpE8ENAiIRhuR
+SGEJOm7Bivp4IItOQBLwmV8wI/Ah5FRp3UJY8pkpirSlyiJA24=
=05jh
-----END PGP SIGNATURE-----


--=-=C5ydJsA+FZVpAy=-=--



--===============2999135146363183276==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2999135146363183276==--


