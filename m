Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1795D17A547
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 13:30:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+j+6rWqoV9T6IzHlDR8Kdq36/uOF+1sJc/ipqVQuNzM=; b=a3s/ffehNsxRG2
	G744mi5M8ViCuXLRJPcpWsg9soXFhfigj/oaxC3tjSdWkFCnPJ3uYUKvEapXL5oK+r+hLTVwoR4Ww
	OXh3LX7VQYl2lOMRz/SFZLyewDstANZk9Orlj4YN7YX5Ze5NEQ3ZsQrgdt/RKySyBrqOGiNq1d9Z1
	S7Z9LbjxiRYBraQGe1rd8r1rj2WkSfy+Ua5PsjzeM8hNBcws9ugazg/SYMV9rEAYV9rRw6+o4zsLA
	g9CHCUrdbhqz/wE09XU8w56zQj5v8qitupjWArBCmN3e8YC9BGIpEc0EOveiu3JcdHh2pDudAPsFm
	BGLATmXRjIxMISNqo4CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9peC-0004Sw-5Y; Thu, 05 Mar 2020 12:30:40 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9pdy-0004Qv-Nj
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 12:30:28 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by util-01.infra.openwrt.org with esmtp (Exim 4.89)
 (envelope-from <mail@adrianschmutzler.de>) id 1j9pdu-00021h-Vp
 for openwrt-devel@openwrt.org; Thu, 05 Mar 2020 07:30:25 -0500
Received: from acer ([88.117.238.145]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MhWx1-1jo7pR0l3T-00eZhx; Thu, 05
 Mar 2020 13:05:54 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Roger Pueyo Centelles | Guifi.net'" <roger.pueyo@guifi.net>
References: <20200227134625.48028-1-freifunk@adrianschmutzler.de>
 <20200227134625.48028-2-freifunk@adrianschmutzler.de>
 <cf52ef4e-2f5a-bbdb-cc0b-4d847fa5ff28@guifi.net>
 <mailman.35539.1583255055.2486.openwrt-devel@lists.openwrt.org>
In-Reply-To: <mailman.35539.1583255055.2486.openwrt-devel@lists.openwrt.org>
Date: Thu, 5 Mar 2020 13:05:55 +0100
Message-ID: <008801d5f2e6$6cfd7f10$46f87d30$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQLUJzdjkWH6Rsk6oe1eMeryhULtrQF/bv77AYYaR00BcQvm/KYZyWYA
X-Provags-ID: V03:K1:D/pQ3avS8iV90B+iW4u2zjteTDw7FnjAtGWpKFAVwREybbHXlyA
 4uLBcZUGYEYQF1h97bigCOFliqkMKzVngrcsdqTKCEvFr3M7V0tk3FANY6z8FX8lRMtnvqW
 3NVhz7HLj6iPWdtDMibR3D5IEId2EEOmVpoJuM2PYbUSvSbzcQKHRprAScKvRCjw/jygJtd
 SWLndX0PfvLDUFeBlonpQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ph1RErJddWM=:HtQONXXQeDJgM1iadjvHQR
 FFe1KSCOiHGNsI9+HW8J+UT7kH05AfA12pZXpGGaxB0tBKjF1bs8GOtLvw78aGG9opJNRgrE0
 C94571PQeAfwpq8IhTciAj+PfMaoTRlt5UAPn1WvJA0p6drfy7eHFFNdipK6gShEk3PEl8coc
 qs/MP3CeXqN0daboIz+EmYHtCyBSKrljtHQ6UgP5xJ4JApfySzGJzWm0kPwRirzvaGCTuOkjP
 91sm9/ODYJeIRHKqrf6eWblMgoZKoUjHqjJOZmBkIIabOZFAwtucmewNzMv3lRfBpMfyC3Y5M
 vkqdkA7pbZOagRunWkuLW0H1T6EdFBftpXO4yiqBXf4yFZMIlZgINjH1NYe4uveW971FM4PM2
 KmJKr+Q/sneDl5DgHoN5Xb3gAv2hEUXfaV5drvvZqD+iJFCn+UxuF+rx+aEa0uadxwg5cbAU3
 lmA4xPYYG6pwkmTOidjbDRQb7oe3H8b3T8nZcL7x72s8uiM4flFTU33sMyazLRT4jMsO/VFv0
 mfQw8vZUCHhUAb122sJ12hK5byWGlMiemJ2nRO/s09zEVHe9UJqUjOAXtbUAJ2IReUE8z0BQj
 6XpKrLieLrXhFeNEMlgkuEl7d76VSPt3KDhOiQkLC19YU+hHIajHScG5g1s58Xr7kG/zn40Se
 tPGEmuJfmOg9pCNtzFlE+P42B5MfFXwKu6IETNGn8axbbiika6nYCuXgtTvR97xGo8dh0iJ1T
 fArbAD59ZXWazfJi3JaIyzWP7+5kbSsc9Ac8sSIglybJ3hX62zz2uuLKZHPGzCqX6ApEPgnto
 A+m1CQ4DAWObOYSjLnM4gQcRQMNNQutzGT505F9Y5MmMLrrSEHZKkSslvjR1jnPvjotfXtN
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview:  Thanks again for your massive help, Roger. I've merged both
 patches and added a third one for the spi frequency on top. I took the liberty
 to add your Tested-by. Best 
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: guifi.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_043026_925414_B70BF027 
X-CRM114-Status: UNSURE (   4.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ramips: fix and tidy up DTS for
 D-Link DIR-810L
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
Cc: openwrt-devel@openwrt.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Thanks again for your massive help, Roger. I've merged both patches and
added a third one for the spi frequency on top.

I took the liberty to add your Tested-by.

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Roger Pueyo Centelles | Guifi.net via openwrt-devel
> Sent: Montag, 2. M=E4rz 2020 15:59
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ramips: fix and tidy up DTS for
D-
> Link DIR-810L
> =

> The sender domain has a DMARC Reject/Quarantine policy which disallows
> sending mailing list messages using the original "From" header.
> =

> To mitigate this problem, the original message has been wrapped
> automatically by the mailing list software.


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
