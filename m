Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56D112F25C
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Jan 2020 01:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Je6BTmrtpqbxq2g99yqv7h0fLUZ8M1DGsIe47lGuOG0=; b=LejyvpTOb54IbJ
	pK7qA0ursgRSW3RQKQJXzQszsJr3LptQF/oTumLRshYNk8iplP8jBEVKcB9BKDZ+CgHb1pA4Z/vGp
	YCXQQMi4o/9age0AV1wvg2PlGO9p97fy+94UJXpbgZy2egWYdvd/JTHJnEUsPBT4SSw+JFFUq4k1V
	ySHsYXEAMW6/xJVySgXwy+pw052IWqrDmQPUKVqwlq+GYehZRvSWew++SImBX1YSCQUvI/AOURmIy
	8qGso3lY1xhAY0ID8MFr7006h8pluJRmYIoZgtVVut7zTBGtdhoQBctYuFqz7RPq66fCRFvIwWh6W
	WCMGBMYCr4ir1MaLvidw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inB7a-0000DK-V8; Fri, 03 Jan 2020 00:47:22 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inB70-0008D2-Mq
 for openwrt-devel@lists.openwrt.org; Fri, 03 Jan 2020 00:46:49 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 89B3836CC;
 Fri,  3 Jan 2020 01:46:42 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id c117c7e0;
 Fri, 3 Jan 2020 01:46:31 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 Jan 2020 01:46:35 +0100
Message-Id: <20200103004638.16307-2-ynezz@true.cz>
In-Reply-To: <20200103004638.16307-1-ynezz@true.cz>
References: <20200103004638.16307-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_164646_919858_3FA470DA 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH procd 1/4] cmake: fix lookup of external
 libraries
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SW4gb3JkZXIgdG8gbWFrZSBpdCBjb21waWxlIHByb3Blcmx5IGluIG1vcmUgZW52aXJvbm1lbnRz
LgoKVGVzdGVkLWJ5OiBQZXRyIE5vdsOhayA8cGV0cm5AbWUuY29tPgpTaWduZWQtb2ZmLWJ5OiBQ
ZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIENNYWtlTGlzdHMudHh0ICAgICAgICAg
IHwgMTQgKysrKysrKysrKy0tLS0KIHVwZ3JhZGVkL0NNYWtlTGlzdHMudHh0IHwgIDIgKy0KIDIg
ZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9DTWFrZUxpc3RzLnR4dCBiL0NNYWtlTGlzdHMudHh0CmluZGV4IDRiM2VlYmQ3YzllMS4u
YTU2NmFjZGZkMjU5IDEwMDY0NAotLS0gYS9DTWFrZUxpc3RzLnR4dAorKysgYi9DTWFrZUxpc3Rz
LnR4dApAQCAtMjUsNyArMjUsMTMgQEAgSUYoTk9UIERJU0FCTEVfSU5JVCkKICAgU0VUKFNPVVJD
RVMgJHtTT1VSQ0VTfSB3YXRjaGRvZy5jIHBsdWcvY29sZHBsdWcuYyBwbHVnL2hvdHBsdWcuYykK
IEVORElGKCkKIAotU0VUKExJQlMgdWJveCB1YnVzIGpzb24tYyBibG9ibXNnX2pzb24ganNvbl9z
Y3JpcHQpCitGSU5EX0xJQlJBUlkodWJveCBOQU1FUyB1Ym94KQorRklORF9MSUJSQVJZKHVidXMg
TkFNRVMgdWJ1cykKK0ZJTkRfTElCUkFSWShibG9ibXNnX2pzb24gTkFNRVMgYmxvYm1zZ19qc29u
KQorRklORF9MSUJSQVJZKGpzb25fc2NyaXB0IE5BTUVTIGpzb25fc2NyaXB0KQorRklORF9MSUJS
QVJZKGpzb24gTkFNRVMganNvbi1jIGpzb24pCisKK1NFVChMSUJTICR7dWJveH0gJHt1YnVzfSAk
e2pzb259ICR7YmxvYm1zZ19qc29ufSAke2pzb25fc2NyaXB0fSkKIAogSUYoREVCVUcpCiAgIEFE
RF9ERUZJTklUSU9OUygtRFVERVZfREVCVUcgLWczKQpAQCAtOTAsNyArOTYsNyBAQCBBRERfQ1VT
VE9NX1RBUkdFVChjYXBhYmlsaXRpZXMtbmFtZXMtaCBERVBFTkRTIGNhcGFiaWxpdGllcy1uYW1l
cy5oKQogSUYoU0VDQ09NUF9TVVBQT1JUKQogQUREX0RFRklOSVRJT05TKC1EU0VDQ09NUF9TVVBQ
T1JUKQogQUREX0xJQlJBUlkocHJlbG9hZC1zZWNjb21wIFNIQVJFRCBqYWlsL3ByZWxvYWQuYyBq
YWlsL3NlY2NvbXAuYykKLVRBUkdFVF9MSU5LX0xJQlJBUklFUyhwcmVsb2FkLXNlY2NvbXAgZGwg
dWJveCBibG9ibXNnX2pzb24pCitUQVJHRVRfTElOS19MSUJSQVJJRVMocHJlbG9hZC1zZWNjb21w
IGRsICR7dWJveH0gJHtibG9ibXNnX2pzb259KQogSU5TVEFMTChUQVJHRVRTIHByZWxvYWQtc2Vj
Y29tcAogCUxJQlJBUlkgREVTVElOQVRJT04gJHtDTUFLRV9JTlNUQUxMX0xJQkRJUn0KICkKQEAg
LTk5LDcgKzEwNSw3IEBAIGVuZGlmKCkKIAogSUYoSkFJTF9TVVBQT1JUKQogQUREX0VYRUNVVEFC
TEUodWphaWwgamFpbC9qYWlsLmMgamFpbC9lbGYuYyBqYWlsL2ZzLmMgamFpbC9jYXBhYmlsaXRp
ZXMuYykKLVRBUkdFVF9MSU5LX0xJQlJBUklFUyh1amFpbCB1Ym94IGJsb2Jtc2dfanNvbikKK1RB
UkdFVF9MSU5LX0xJQlJBUklFUyh1amFpbCAke3Vib3h9ICR7YmxvYm1zZ19qc29ufSkKIElOU1RB
TEwoVEFSR0VUUyB1amFpbAogCVJVTlRJTUUgREVTVElOQVRJT04gJHtDTUFLRV9JTlNUQUxMX1NC
SU5ESVJ9CiApCkBAIC0xMDgsNyArMTE0LDcgQEAgZW5kaWYoKQogCiBJRihVVFJBQ0VfU1VQUE9S
VCkKIEFERF9FWEVDVVRBQkxFKHV0cmFjZSB0cmFjZS90cmFjZS5jKQotVEFSR0VUX0xJTktfTElC
UkFSSUVTKHV0cmFjZSB1Ym94ICR7anNvbn0gYmxvYm1zZ19qc29uKQorVEFSR0VUX0xJTktfTElC
UkFSSUVTKHV0cmFjZSAke3Vib3h9ICR7anNvbn0gJHtibG9ibXNnX2pzb259KQogSU5TVEFMTChU
QVJHRVRTIHV0cmFjZQogCVJVTlRJTUUgREVTVElOQVRJT04gJHtDTUFLRV9JTlNUQUxMX1NCSU5E
SVJ9CiApCmRpZmYgLS1naXQgYS91cGdyYWRlZC9DTWFrZUxpc3RzLnR4dCBiL3VwZ3JhZGVkL0NN
YWtlTGlzdHMudHh0CmluZGV4IGZkN2Q2YmI1OGI3OC4uMDljZjQ3MmU0N2VlIDEwMDY0NAotLS0g
YS91cGdyYWRlZC9DTWFrZUxpc3RzLnR4dAorKysgYi91cGdyYWRlZC9DTWFrZUxpc3RzLnR4dApA
QCAtNSw3ICs1LDcgQEAgRklORF9QQVRIKHVib3hfaW5jbHVkZV9kaXIgbGlidWJveC91bG9vcC5o
KQogSU5DTFVERV9ESVJFQ1RPUklFUygke3Vib3hfaW5jbHVkZV9kaXJ9KQogQUREX0RFRklOSVRJ
T05TKC1PcyAtZ2dkYiAtV2FsbCAtV2Vycm9yIC0tc3RkPWdudTk5IC1XbWlzc2luZy1kZWNsYXJh
dGlvbnMpCiBBRERfRVhFQ1VUQUJMRSh1cGdyYWRlZCB1cGdyYWRlZC5jIC4uL3dhdGNoZG9nLmMp
Ci1UQVJHRVRfTElOS19MSUJSQVJJRVModXBncmFkZWQgdWJveCkKK1RBUkdFVF9MSU5LX0xJQlJB
UklFUyh1cGdyYWRlZCAke3Vib3h9KQogSU5TVEFMTChUQVJHRVRTIHVwZ3JhZGVkCiAJUlVOVElN
RSBERVNUSU5BVElPTiBzYmluCiApCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
