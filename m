Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C4814CBFE
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 15:03:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVgrJd3Hg1t3O9U8Fcu+MZVav7BqSk8QVJdkCUYkqJE=; b=CJQBZ+KQBgmCcZ
	k2HKyhG9/jTyIuz3XsgQyhlTlhfhcSTe7f5QDGY/PAbR3+ON6xlPxB7+bP/z6nSeQhzEmiUKMm9Jh
	GXUVvZNl0RlRRYiGkGAgqsnyc4cko+x7R5B6dQ2HzICmbZopeyGYhCc5ZpYnwgGRyBfIC5b+oIEg5
	UYcypeFGg7Ynunnds4zYskIocsG9IBdV0Db342y5nLECSxFLObiAvihyqG8ybanKUYuP8q22yuQwL
	1czaY4O/7FLZrzoVAKI9VbLbgsdBRsEoQTxvMuwfLeA+pCUZACIQo0LzrFVL143iKQWKRypFIhk1y
	jrZvusYqq0GCNlDV5INA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwnwA-0004lj-Ka; Wed, 29 Jan 2020 14:03:22 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwnw3-0004lP-G4
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 14:03:17 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Mw99Y-1jodVR2dgC-00s5JD; Wed, 29
 Jan 2020 15:03:09 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Jeffery To'" <jeffery.to@gmail.com>
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
 <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
 <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
 <81df4caf-8f04-74a1-dd1c-0beea3fca222@gmail.com>
 <02b701d5d540$8eee1ad0$acca5070$@adrianschmutzler.de>
 <fcbe4834-b61a-c3a6-99fa-77058773c59d@gmail.com>
 <00c001d5d5f2$62758ad0$2760a070$@adrianschmutzler.de>
 <CAJXyS=jbdMLn8wzoGuVxY9HBf+R+s29W0pofgDdaOHfSZ-Ut3w@mail.gmail.com>
In-Reply-To: <CAJXyS=jbdMLn8wzoGuVxY9HBf+R+s29W0pofgDdaOHfSZ-Ut3w@mail.gmail.com>
Date: Wed, 29 Jan 2020 15:03:09 +0100
Message-ID: <003701d5d6ac$d65bd840$831388c0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQGe0uH3YMoujDnAXodp5C7FQpVSGgH5MCOhAdXATn4CkcEaigGcwTU9ArqxLZABTM2NBgI0xCSNAr3GPjsCcN7yuafUb5mw
X-Provags-ID: V03:K1:dB6EKsxgHVXnxnQyjdljS8dKvYy0Sk4t1sFt4R/qLDIU0r0GDOe
 2NJ6IQen0nmsq9qFAgCfkNA/E1wBEhJ04W3XwVQ/FGnF+9zNVALlWR2ViqvK2jMW0bKbCdT
 TPOUU84u7Zto5c+74Pa9Z5OR78iIalnTuCiNNDUYKRmL5iP5rCoVz20N586vzekfmjPHw0S
 ilT9JSTqTuXXLJpfH9n0g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:z4mDkAbrASU=:IIZdxIbsYO9cG91ko3GwZU
 iM4f00XcnBdHIUfjRlEkjyMadOsYphxVPMRlv5M4lOdBae5fje0bkT1qKiki0eWL06YCPuT6J
 9TwU7sNCJ3yyXPtrTmoS6KR+b0NxVISi3r6itOtucClVZdxbvkfDnLukhAONw7ilmGu5vWDfd
 iCoBpAMearkDGcOwbxF53cOabegg4Me10wKP7GbSmSS0sehYTzRkxA4sof7X4VerFacEKThAo
 Ej34lqVsRXp9A6YLku58nOk62q5LDoW2qRydAgaRydugFeqDG9mVk20XV4Uyw0eEn3ux5Jv36
 rFbQS/dUcgpyci38ecRgP4x83mI6fiO0CUC/S2ppbbBXhYOlxpnZm6mqe+4eEVItcWqvuyEuP
 dJkW2TCQx3R7MenYC4FbngBafdD5/2l6T4QMD+r5+QBQvz/IneObP797UHTTZ0/G40Ow6eyDI
 3SUZjco8p0e8Qh5vOALFtjIvZNCvkPV1bVxz5YsidcyhV6rGrCfQJgAWZu04u9jBIcC6uI6uq
 qq9fkfrXJyObMIqFq4yzapOYc6M5sB0EMUroVIbXsN8JttvcseqTd/sHvGQSb7JhlAGG7JE1U
 eSLD4MhZBv0dHWAXUVGqTW2qRQRB9EbIDeHcEBCQ4/pKzzppMdX5pUinD3W9m4Xs+QllFeM0S
 BUAne+Xa+RvphpH+rrkL01vbBcPBy4Sf+ueKPD/2Rp/E6NVL/qEDlOQ0XCBlI9+yEcpQNfYZ4
 pz41m4KvCIaBe+KaYwj5fHq/j/C02JfQ+7baVUKu4JjR2vP5CS2XiWG+RI2SlyueT+WyCG2Cf
 8HACE0inwZbQy56Q+uLArEU2DD8+R8wGyU0HUbyZDXYH+ljvNsh3HErf0jR8JJYD4f+AM/G
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_060315_833443_4227C91B 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
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
Cc: openwrt-devel@lists.openwrt.org, gch981213@gmail.com, ansuelsmth@gmail.com,
 'Piotr Dymacz' <pepe2k@gmail.com>, 'David Bauer' <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> (I should first say that I don't know enough about the ar71xx-ath79 migration to know if this idea will work, but I don't recall seeing it mentioned before.)
>
> What if we add a migration package for 18.06 that ar71xx users can opt-in and install, which (when the user initiates the process) will migrate their config and perform an upgrade to 19.07 (ath79)? Their config would > be broken for 18.06 after the first step, but if the sysupgrade completes successfully then their config works for 19.07 after the reboot. (Would be nice if there is a way to roll back the config changes if the sysupgrade fails.)
>
> This is perhaps a variation of the transition image idea from Peter Geis, but this would be less intrusive to the overall upgrade process (at least for me).

I like that idea in general, because it will spare us from determining whether the system needs to be updated (we will outsource that to the user for this particular case). Disadvantages are obviously that the user has to be (made) aware of that solution, so it's still not a "seamless" upgrade. And we still would have to prepare a suitable upgrade script, which we do not have at all ATM (though this might make it easier to write one).

Best

Adrian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
