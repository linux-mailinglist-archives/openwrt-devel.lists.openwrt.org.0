Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2ADD3E23
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 13:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:From:To:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=923vvdMubJMtJEbfGEUvr18v/obGVDG1+lCzyp1gq2Y=; b=CpnSKx4j6YUOnq
	DTcgvnvL/26LnXrzIyS0TnWmCMDZIKdW3+y9SfEPNuKEvTcSZ72kL10slj3Nu/vOTVV0MR75wXCvD
	6+xWs7zG8PFJ7o/QG8Nx3iUthwnDcRttsG3lW+YJLH9GPEQiTkw4WwOcVNgd5ei1r7H1qER+LXXfY
	yoYzQUhp/B+dZU1F6TKKMXjqFYGk4/AEc/hnRm7UG8x/u1kHR4EtnnfsR3fiIa3fqi3McWbjyVrRw
	R8bRCDIWfrvJhHqg4N7lL6NEx4tiRbPc9UQigHj3znqaHxhoaT8rpMmoeSQwCSu2hwTIk8GG/F6PH
	7YOMF0Dptb08njKsvVmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIswC-0005eA-5Z; Fri, 11 Oct 2019 11:18:24 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsw5-0005da-00
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 11:18:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570792687;
 bh=mjJ5+K60o+tIRpigqe9JzIVGJi9Lv9uB1hqPfOdNlaM=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:To:From;
 b=KhKdwy+V3zf6ui5ElE5Sw77PrqtpqzgL7V2PKTnuxqR9Mx219pwE8YUi0b4F0NM12
 qAxPGiPgrOq1GzsrtXajn57dtRqDXWmzdaJCE3La55kLjdv0cfA09xMAxyiVY1wdV0
 waQC63eVbDMxA1RpdDDQM7ffTOgRbzQuYz1Sujbk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.17.68.32] ([80.187.114.239]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MGhuK-1iF1JM3Uig-00DrTS; Fri, 11
 Oct 2019 13:18:06 +0200
Date: Fri, 11 Oct 2019 13:18:01 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org,Jo-Philipp Wich <jo@mein.io>
From: Sebastian Moeller <moeller0@gmx.de>
Message-ID: <B5610083-3E74-48CB-930E-F4074FAB6475@gmx.de>
X-Provags-ID: V03:K1:kemIiJpVVguP9DVTe96TEOm2SnYl0JyFf+rUblcWCcS/bF6ofxD
 1/uKW0uVVIFepJ1MmDdB5E6gVqiI2TrS00SFIemo2ZSdz1Z/wrT3upksqhYzellAeJP4JZz
 Vs+1MlI8jA/Jf+8IjElrOj/q92fI83N/Aq0HBe0rmeGCOjkwQaWgNBH6xXTSqbJG6JM9Zed
 lDFZZayqkwOLqRn3NmisA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:viVCbR/Unxg=:hFZBY4IUdOgoXwCgf7Ycxg
 0QUUuLX7Y1s3f0+ER2HugtfDvYl6tbfPC4lqNvjUgoK9IEvTJPcGsSLRfTwMYs3Z/Jo/LgeUO
 Asi4juI1n49vWOIwVw/orslH1FLc1dgO0XoZn6mMX4JtHBQMTobkLP3TkXffRT66xwUoMLyjL
 OH/X9ZqvDo6Dll3s1Vs/iJEQ9obV53StQmjn7bfQb7sy7dVTuYQIrgozYUEtu1sD4YNqA4Hck
 JgdPUPwVXSRNGUWfo1tAdFaLXCrBstE1vTE/et2qeYCbtEJ86ToXOQtw2UUVfUWEsR+w18nom
 va/qVRWOBdhT2iuiDhcqXuwfii8GqHPx4QLR9szRlZ8Ak8RabDkFmfouyJqEIVIiCAZgaWlS7
 G9lReO8PeuoIDoP0k05Fg5+Z3gGnOzYW5NtmrJSJjZHPqCkh9KaMsKGln3b95x7I+KJAz22ba
 HZg2SxgNZhK+VlEzzwBtwieePrqsEEMeGNJFTNFBdPxu0dwBJUFWMyDpmtxophD2oiVfdJUdq
 qqPQUP7OdIhdqEqFXHo36wnnlzh5KEEpwVAC1akvwab+XMDpC9YHrlx893FagbXmAYv7RNC59
 JKqnNCLkv7Teiua7s3tF2nw80Omw71eyaBUJ/yBNRcYP6hknc2D2npX+eDzBSROOIlFz4YgS4
 TrM77Gf8sCvnAkOzWfCKPzr7iYtxNQzxkbwZlpFWNdW10R87AS6drVX2RkGTpz9p4wFteMMxL
 qgTDPP2L+qMmAEmh7ygJps8M4eREESx81IFjnKBXdBlj9raqkvFTEQCrgUoDSfrNcGnJKTedN
 49PLAIHjhYVBSiKyH7dwhLpG6r/G3QQ5UDk6WReDnPyXObN9FD8caoUTcW+yTrJcNaN37oZwX
 r874N+GgrHBcXcZH1J8Pq2uPNIVdMagqwww7+rHacAMH24eLmMjEqszn7MXwrj6lIOy8OU3X4
 fHpVTjuDf9TZ4ecqUnZ/Y2gtibELH/pe8dPvd9eXvwnfDY7VSK1CPXvZpHrS5SaCoo47WRtwe
 Q7JogssUmFlMj0duU30cyXckWVcky/vBoy36/4BW60rzTE1ZdksEXqwd5BLp01zJjtgGh8Ebr
 X2aKEzGvYdbNKXSQoppsOFvQzgtfP7hOXUBIbCG/lf3le3b+cVoNNcTrWBuH/6jvkZZ0/rwIm
 A8wAHqXB3QkLFNBgBMy0K5k+y0KBWB0FygjfOIDA2O1qg//YF3bF9V7nTFh9KgHxXgK/nNwJn
 91qVBDZ52Oirk4wXhHiyx4SFydqr6IJnI0mfQ6ZF3DvKB+5oOSeSsqJR8Ov0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_041817_371851_D738FEBF 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (moeller0[at]gmx.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (moeller0[at]gmx.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhhbmtzIGZvciB0aGUgdXBkYXRlLgoKT24gT2N0b2JlciAxMSwgMjAxOSAxMjo1OTowNCBQTSBH
TVQrMDI6MDAsIEpvLVBoaWxpcHAgV2ljaCA8am9AbWVpbi5pbz4gd3JvdGU6Cj5IaSBCasO4cm4s
Cj4KPj4gT3I6IFN0YXJ0IGRpc2N1c3NpbmcgdGhlIHJlbGVhc2UgYmxvY2tlcnMgaGVyZSBhbmQg
bm93LiAgVGhhbmtzLgo+Cj4xKSBCbG9ja2VyOiBMdUNJIG1hc3RlciBuZWVkcyB0byBiZSBiYWNr
cG9ydGVkIHRvIDE5LjA3Cj4gICBUaW1lIGVzdGltYXRlOiAyLTMgd2Vla3MKPgo+MikgQmxvY2tl
cjogQWxsIHJlbGV2YW50IHN1Yi1jb21wb25lbnRzIGZvciBXUEEtMyArIEdVSSBzdXBwb3J0LCBz
dWNoCj5hcwo+ICAgaG9zdGFwZCwgaXdpbmZvIGV0Yy4gbmVlZCB0byBiZSBiYWNrcG9ydGVkIHRv
IDE5LjA3Cj4gICBUaW1lIGVzdGltYXRlOiAyIHdlZWtzCj4KPjMpIEJsb2NrZXI6IFNvbWUgd2Vh
a25lc3NlcyBpbiBsaWJ1c3RyZWFtLXNzbCBjbGllbnQgY2VydGlmaWNhdGUKPiAgIGhhbmRsaW5n
IG5lZWQgdG8gIGJlIGFkZHJlc3NlZCwgd2hpY2ggY2FuIG9ubHkgYmUgc29sdmVkIGJ5IGFuIEFQ
SQo+ICAgcmVkZXNpZ24uIEJhbmQtYWlkIGZpeGVzIGF2YWlsYWJsZSBidXQgbm90IG1lcmdlZCwg
bm9ib2R5IHdvcmtlZAo+ICAgb24gQVBJIHJlZGVzaWduIHlldAo+ICAgVGltZSBlc3RpbWF0ZTog
MSB3ZWVrCj4KPjQpIEJsb2NrZXI6IE5lZWQgdG8gYXNzZXJ0IHRoZSBzdGF0ZSBvZiB0aGUgRHJh
Z29uYmxvb2QgV1BBMwo+ICAgdnVsbmVyYWJpbGl0aWVzIGluIDE5LjA3J3MgaG9zdGFwZAo+ICAg
VGltZSBlc3RpbWF0ZTogYSBmZXcgZGF5cyBJIGd1ZXNzCgpRdWVzdGlvbjogSG93IGxvbmcgd291
bGQgaXQgdGFrZSB0byBzdGFiaWxpemUvdGVzdCBhIGZyZXNoIGZvcmsgZnJvbSB0b2RheSdzIE1h
c3RlciBicmFuY2ggaW5zdGVhZD8gSSBhc3N1bWUgbm9uZSBvZiB0aGVzZSBpc3N1ZXMgYXBwbHkg
dG8gbWFzdGVyIG9yIG5lZWQgdG8gYmUgc29sdmVkIGluIG1hc3RlciBhcyB3ZWxsPwoKQmVzdCBS
ZWdhcmRzCiAgICAgICAgU2ViYXN0aWFuCgo+Cj5+IEpvCj4KPl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj5vcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCi0tIApTZW50IGZyb20gbXkgQW5kcm9p
ZCBkZXZpY2Ugd2l0aCBLLTkgTWFpbC4gUGxlYXNlIGV4Y3VzZSBteSBicmV2aXR5LgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
