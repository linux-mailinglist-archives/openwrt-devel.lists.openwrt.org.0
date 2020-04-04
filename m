Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CE719E72C
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Apr 2020 20:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BsE6ZtQ2Uy15uDOvmqHRkOHb45dsreo6r7+lipjXmLk=; b=ZUT9gBn2ueWIoTcJHw1DAJEyQ
	prZE3cEQnhdMqXwX6wOUCYJQuP/BG1wf8EbMi+hQbXYF+C7e5G4u2xYQmz47EztMELHfS8mXWx+Ji
	6c+qVkNEcLfYC21oxdDAKtTWmNCenxCrocJbB60azzbjJT+xawHSULJONp3nFqXIpyHuY0lXsUCEN
	XAiGyo7qjFU0Y1dQyt0vS1xlmPCbKrucleCEaM/5n3qVVlULYzJI8cvMhXAXpQp/ngUCL2Eb3qNIF
	FQebjiQKNlneyz1B/PGMQInN3tlGAhB7IhBZl35t4eIu3w9kDNUSxaD0/wKfyyC751PQklBSxAwwK
	0rWFsbjfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKnoO-0007iZ-U9; Sat, 04 Apr 2020 18:46:32 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKnoF-0007hz-OH
 for openwrt-devel@lists.openwrt.org; Sat, 04 Apr 2020 18:46:25 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M1IRY-1jJAB60O6s-002kx0; Sat, 04 Apr 2020 20:46:18 +0200
From: <mail@adrianschmutzler.de>
To: "'Hans Dedecker'" <dedeckeh@gmail.com>,
 "'Peter Stadler'" <peter.stadler@student.uibk.ac.at>
References: <20200327123608.198650-1-peter.stadler@student.uibk.ac.at>
 <CAJLcKsH=8d=7DXQ8LzM6LV_+eBuRNzGUzG2_urrFF+E-Q2xA3g@mail.gmail.com>
In-Reply-To: <CAJLcKsH=8d=7DXQ8LzM6LV_+eBuRNzGUzG2_urrFF+E-Q2xA3g@mail.gmail.com>
Date: Sat, 4 Apr 2020 20:46:17 +0200
Message-ID: <004c01d60ab1$538a73c0$fa9f5b40$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKgKsFllCd0xooSs4K7DyG40rJfoAMbhp/Dprwwp2A=
X-Provags-ID: V03:K1:+2X8Atw7k5vs7oJ8n/HD9tMx+fTk+q9wmSdufVbX6BgzBqb5rid
 8Oxl/4mLnJkEeHnitQ1lidQQoPLrOoMQVheY9kInH1OYCzMcnPj2sXIlQBhit7he3K36WYy
 mAnLwvcYvLkcpKtJ9SFPmq1Mx5fN8iG5GepPpi+FjD5UDg9o9sDLLRZEhHpWkwViiOhjwur
 /n2AuBPmsmMnVtIXpkQkQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CmqRmQAm0Jg=:g1sXK5kScZyRnae3B4NN0/
 Xh7l8dC7R8Wu/5lqHum+uey7XIU+Hht691oMuhitBr5LtVdAL6uq4ejrgCd1r881ZbYLtlQQM
 TFyWbt8CoiNG0wLU01PpsfYFNDjQ/g2zBdt86VQ1JxSB+qPV7LmQVdZvgTfhck+cI4n+AEp/I
 zq7esCmYAmeOwzYsPmJc6FtzKc2vodNyc92EPeKzJWAbEq6y7ZC/vpNW5KS8/wRR76g0CjlUH
 p7q8MWmTcMCjf5rIBHkXAaGEPEqd0SHjzfP+awEXkiN5s+clxwOsQoEvVGLZRYv2lutQRc+5q
 +o4SUWuCVe4ZWA+vtxWnpaxDtZZqdMFHzgHdhUisoVO0skvhgJ5VivMKr8Oy/llvw2gW/Xqkv
 G8JE7JcLxUMhn95dMSK3oSsFn+iMroW5AsO7tDTWDVAhNtRWKuRobrkNnIibaNwy9iOK2qobw
 LQ9SG2asXoiRKZTR2oknPRTmGQKmkRo0Mhh5yhfnyQPqjShBStc61j5f4w+Lraz9MENNq9A+q
 kz5D67lw5ctxaykcGREQibVzUNMQcvNb/E8wGZhkBQNyI7QKWJ60l6/AVDBsd55sAb+C6fNFn
 tj/0nd9lsKkfCeJdYlkj9Uj1Ym8wYrRoFqJkYsPn6K17QpOTtdKdkgISlXKOFcq/FstycGx9d
 svVBOqyIctNidk6qfxNpGztxQcWNDMKyFQeqYA9ikTva0e5MisIYr6BtmMzl7FllTN+WuGY4z
 c4mcFmiiv5DZuXvkxsaaeoISdZ0RNRj5UXRaHkH7AqsDyFXl+KXPxmJHd0h+EvR1tYKtMa5JV
 VolqdpvL8M90IyKM3s13D2qTQAHfw7QFyJV+IMXDQ8+iauIABXXoN5Z2u5MP/kM6+mTY+F1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_114624_082710_E1AAC412 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: fix 14_migrate-dhcp-release
 script
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
Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============3167681461341913059=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3167681461341913059==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=5sTLJSez0eM0VU=-="

This is a multipart message in MIME format.

--=-=5sTLJSez0eM0VU=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>> prepend 'uci' to 'commit network'
> Can you explain why the prepend of 'uci' is required ?
> In other words what is not working as I fail to spot the issue

I think the author is right. "commit" is no command but an argument to the =
uci command.

Best

Adrian

--=-=5sTLJSez0eM0VU=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6I1fYACgkQoNyKO7qx
AnAPLhAAhzhM91McnL38L3ATpdZiFfd1Z/cNqwNdLQUohTkjJdI52cFdimZIBCIr
7xIFUkKCYZ4LU2fDfouYvFR/twi6lSwLgzpMdBf/Dyaf+jCJfY0e2QCf8oC0LfH2
bkqfgBPS5a/za+lkNTDiU05kMW3y92PN0wU9jDsuaaGYE86DKAl0SKPhLBeTseKD
VtImcN3JhWYC+sG3iUmjreVUtvvLJ4GlMFVxmCilVQOKy4GYnIldlVrepuiLMr16
JHrJj3gTXkoJfLPzmQGVkLU7hJadGzi8vpT9e8vWSrYL6KyKcwFiEJBfORz99l4D
CIBkwnYdFyLHxEvR6p1vkjw+1j/qWAquZ4Ilvk2m+acSttKEuSNcJZHgda+Djk/Q
zaHsxQWJh6/79L/YnhTn9cdEDqrrV+EC+wgbtnpJ5VLcjbCNEYxBza01GbHUznVN
BpYez+Xcsp6h7PzUgX1HFqYqopilxN+E0eiE18nq9B3OG2a2yTFcf+E9HfJ79uOc
eGkn87KK2TrEUiZZZBvMw4P7VSaV2S6mufRYmgwgES2RL9M2slK02U2N6fIYwYoy
oxkIxqdPlf+xztFRkSWv3jGAcajr/MPwGBvGUTb0OiyoKnLC/1NH/nOMxBQO2t+Q
bYVkumFtKcIoM0AuW28zEXmf4lSGBwnfCmset5SWtKegH5zB+dM=
=Lzev
-----END PGP SIGNATURE-----


--=-=5sTLJSez0eM0VU=-=--



--===============3167681461341913059==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3167681461341913059==--


