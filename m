Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E516512701E
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 22:59:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rjrpSkwOonIDS67qQMb5e3/MfSfFhi+HhJvE5ce072E=; b=Po4v8tg2d0g8Rd
	vqFUSsLl+h1URy4p6udNmxHNdDAGatKqhQd4Ho9uhrhVkmXLmXQ6s00vVPvd22u64ZjBb1mAE8XT1
	cTt7pSyeRFYdk7am9o6xme82wb4xEjKhkUkJOcvLYHzO7aea62BrGPLq15iUJpAxrYB/mXbTEAu2S
	ggr6O45omVvrwz7iy6tClFyizxqOyJtkQAZopJ07vSDwGH59y/zMZcG+AlkwVZl9sgzOLSrGWSfh8
	Yd/OL5vrQWgg/nyejguqmxwLlokHaq4bYPiMyynGLDXYrwxr2U4zOcGMEbVmCsp5uPlpdtRq9dSTe
	vHoEaRLnHAHH/6tQJdYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3p4-0000th-QR; Thu, 19 Dec 2019 21:59:06 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3om-0000qq-KE
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 21:58:50 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D60144B41;
 Thu, 19 Dec 2019 22:58:41 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 6a950149;
 Thu, 19 Dec 2019 22:58:31 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 22:58:16 +0100
Message-Id: <20191219215836.21773-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135848_819128_887C7F41 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH libubox 00/20] tests, fuzzing,
 fixes and improvements
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

SGksCgp0aGlzIHBhdGNoIHNlcmllcyBhZGRzIHVuaXQgdGVzdHMgcGFzc2VkIHRocm91Z2ggVmFs
Z3JpbmQsIHVuaXQgdGVzdHMgY292ZXJlZAp3aXRoIENsYW5nJ3Mge0FkZHJlc3MsTGVhayxVbmRl
ZmluZWRCZWhhdmlvcn1TYW5pdGl6ZXIsIGZ1enppbmcgd2l0aApsaWJGdXp6ZXIgYW5kIGJ1bmNo
IG9mIGZpeGVzIHVuY292ZXJlZCBieSB0aGUgbmV3IHRlc3RzLgoKUGV0ciDFoHRldGlhciAoMTcp
OgogIGNtYWtlOiB1c2UgZXh0cmEgY29tcGlsZXIgd2FybmluZ3Mgb25seSBvbiBnY2M2KwogIGJs
b2Jtc2cvdWxvZzogZml4IGZvcm1hdCBzdHJpbmcgY29tcGlsZXIgd2FybmluZ3MKICBjbWFrZTog
YWRkIG1vcmUgaGFyZGVuaW5nIGNvbXBpbGVyIGZsYWdzCiAgdGVzdHM6IGFkZCB1bml0IHRlc3Rz
IGNvdmVyZWQgd2l0aCBDbGFuZyBzYW5pdGl6ZXJzCiAgdGVzdHM6IGFkZCBsaWJGdXp6ZXIgYmFz
ZWQgdGVzdHMKICB0ZXN0czogYWRkIHRlc3QgY2FzZXMgZm9yIGJsb2IgcGFyc2luZwogIHRlc3Q6
IGZ1eno6IGFkZCBibG9iX3BhcnNlIGNyYXNoZXMKICBibG9iOiByZWZhY3RvciBhdHRyIHBhcnNp
bmcgaW50byBzZXBhcmF0ZSBmdW5jdGlvbgogIGJsb2I6IGludHJvZHVjZSBibG9iX3BhcnNlX3Vu
dHJ1c3RlZAogIHRlc3RzOiB1c2UgYmxvYl9wYXJzZV91bnRydXN0ZWQgdmFyaWFudAogIGJsb2I6
IGZpeCBPT0IgYWNjZXNzIGluIGJsb2JfY2hlY2tfdHlwZQogIHRlc3Q6IGZ1eno6IGFkZCBibG9i
bXNnX2NoZWNrX2F0dHIgY3Jhc2hlcwogIHRlc3RzOiBhZGQgdGVzdCBjYXNlcyBmb3IgYmxvYm1z
ZyBwYXJzaW5nCiAgYmxvYm1zZzogbWFrZSBibG9ibXNnX2xlbiBhbmQgYmxvYm1zZ19kYXRhX2xl
biByZXR1cm4gdW5zaWduZWQgdmFsdWUKICBibG9ibXNnOiBmaXggaGVhcCBidWZmZXIgb3ZlcmZs
b3cgaW4gYmxvYm1zZ19wYXJzZQogIHRlc3RzOiBmdXp6OiBmdXp6IF9sZW4gdmFyaWFudHMgb2Yg
Y2hlY2tpbmcgbWV0aG9kcwogIGJsb2Jtc2c6IHJldXNlIGJsb2Jtc2dfbmFtZWxlbiBpbiBibG9i
bXNnX2RhdGEKClRvYmlhcyBTY2hyYW1tICgzKToKICBFbnN1cmUgYmxvYl9hdHRyIGxlbmd0aCBj
aGVjayBkb2VzIG5vdCBwZXJmb3JtIG91dCBvZiBib3VuZHMgcmVhZHMKICBSZXBsYWNlIHVzZSBv
ZiBibG9ibXNnX2NoZWNrX2F0dHIgYnkgYmxvYm1zZ19jaGVja19hdHRyX2xlbgogIGJsb2Jtc2c6
IGFkZCBfbGVuIHZhcmlhbnRzIGZvciBhbGwgYXR0cmlidXRlIGNoZWNraW5nIG1ldGhvZHMKCiBD
TWFrZUxpc3RzLnR4dCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMjAgKy0KIGJs
b2IuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA5OCArKysrKysr
LS0tCiBibG9iLmggICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTEg
Ky0KIGJsb2Jtc2cuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA4OSAr
KysrKystLS0KIGJsb2Jtc2cuaCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICA2OCArKysrKystCiB0ZXN0cy9DTWFrZUxpc3RzLnR4dCAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgIDkgKy0KIHRlc3RzL2NyYW0vaW5wdXRzL2ludmFsaWQudWNlcnQgICAgICAgICAgICAg
ICB8IEJpbiAwIC0+IDM2MiBieXRlcwogdGVzdHMvY3JhbS9pbnB1dHMva2V5LWJ1aWxkLnVjZXJ0
ICAgICAgICAgICAgIHwgQmluIDAgLT4gMzU2IGJ5dGVzCiB0ZXN0cy9jcmFtL3Rlc3RfYXZsLnQg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDkgKwogdGVzdHMvY3JhbS90ZXN0X2Jhc2U2NC50
ICAgICAgICAgICAgICAgICAgICAgIHwgIDMwICsrLQogdGVzdHMvY3JhbS90ZXN0X2Jsb2JfcGFy
c2UudCAgICAgICAgICAgICAgICAgIHwgIDc4ICsrKysrKysrCiB0ZXN0cy9jcmFtL3Rlc3RfYmxv
Ym1zZy50ICAgICAgICAgICAgICAgICAgICAgfCAgMTUgKysKIHRlc3RzL2NyYW0vdGVzdF9ibG9i
bXNnX3BhcnNlLnQgICAgICAgICAgICAgICB8ICA2NSArKysrKysrCiB0ZXN0cy9jcmFtL3Rlc3Rf
anNobi50ICAgICAgICAgICAgICAgICAgICAgICAgfCAxNDQgKysrKysrKysrKysrKysKIHRlc3Rz
L2NyYW0vdGVzdF9qc29uX3NjcmlwdC50ICAgICAgICAgICAgICAgICB8ICA1NSArKysrKysKIHRl
c3RzL2NyYW0vdGVzdF9saXN0LnQgICAgICAgICAgICAgICAgICAgICAgICB8ICAyMCArKwogdGVz
dHMvY3JhbS90ZXN0X3J1bnF1ZXVlLnQgICAgICAgICAgICAgICAgICAgIHwgIDEyICsrCiB0ZXN0
cy9mdXp6L0NNYWtlTGlzdHMudHh0ICAgICAgICAgICAgICAgICAgICAgfCAgMTggKysKIC4uLi83
MTUyMGE1YzRiNWNhNzM5MDMyMTY4NTdhYmJhZDU0YTgwMDJkNDRhICB8IEJpbiAwIC0+IDIgYnl0
ZXMKIC4uLi9jMWRmZDk2ZWVhOGNjMmI2Mjc4NTI3NWJjYTM4YWMyNjEyNTZlMjc4ICB8ICAgMSAr
CiAuLi4vYzQyYWMxYzQ2ZjFkNGUyMTFjNzM1Y2M3ZGZhZDRmZjgzOTExMTBlOSAgfCBCaW4gMCAt
PiAzIGJ5dGVzCiAuLi5oLTFiOGZiMWJlNDVkYjNhZmY3Njk5MTAwZjQ5N2ZiNzQxMzhmM2RmNGYg
fCBCaW4gMCAtPiA2IGJ5dGVzCiAuLi5oLTMzMzc1N2IyMDNhNDQ3NTFkMzUzNWYyNGIwNWY0Njcx
ODNhOTZkMDkgfCBCaW4gMCAtPiAxMCBieXRlcwogLi4uaC00YzRkMmMzYzlhZGU1ZGE5MzQ3NTM0
ZTI5MDMwNWMzYjk3NjBmNjI3IHwgQmluIDAgLT4gMTcgYnl0ZXMKIC4uLmgtNWU5OTM3YjE5N2M4
OGJmNGU3YjdlZTI2MTI0NTZjYWQ0Y2I4M2Y1YiB8IEJpbiAwIC0+IDg2IGJ5dGVzCiAuLi5oLTc1
YjE0NmM0ZTZmYWM2NGQzZTYyMjM2YjI3YzY0YjUwNjU3YmFiMmEgfCBCaW4gMCAtPiA0IGJ5dGVz
CiAuLi5oLTgxM2YzZTY4NjYxZGEwOWMyNmQ0YTg3ZGJiOWQ1MDk5ZTkyYmU1MGYgfCBCaW4gMCAt
PiAzNiBieXRlcwogLi4uaC05ODU5NWZhYTU4YmEwMWQ4NWJhNGZkMGIxMDljZDNkNDkwYjQ1Nzk1
IHwgQmluIDAgLT4gNiBieXRlcwogLi4uaC1kMGYzYWE3ZDYwYTA5NGIwMjFmNjM1ZDRlZGI3ODA3
YzA1NWE0ZWExIHwgICAxICsKIC4uLmgtZGY5ZDEyNDMwNTdiMjdiYmFkNjIxMWU1YTIzZDFjYjY5
OTAyOGFhMiB8IEJpbiAwIC0+IDE2IGJ5dGVzCiAuLi5oLWUyZmQ1ZWNiM2IzNzkyNjc0MzI1NmYx
MDgzZjQ3YTA3YzM5ZTEwYzIgfCBCaW4gMCAtPiA2NiBieXRlcwogdGVzdHMvZnV6ei9jb3JwdXMv
dmFsaWQtYmxvYm1zZy5iaW4gICAgICAgICAgIHwgQmluIDAgLT4gMTc2IGJ5dGVzCiB0ZXN0cy9m
dXp6L3Rlc3QtZnV6ei5jICAgICAgICAgICAgICAgICAgICAgICAgfCAxMDAgKysrKysrKysrKwog
dGVzdHMvdGVzdC1ibG9iLXBhcnNlLmMgICAgICAgICAgICAgICAgICAgICAgIHwgMTc1ICsrKysr
KysrKysrKysrKysrKwogdGVzdHMvdGVzdC1ibG9ibXNnLXBhcnNlLmMgICAgICAgICAgICAgICAg
ICAgIHwgIDc0ICsrKysrKysrCiB1bG9nLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgIDMgKwogMzYgZmlsZXMgY2hhbmdlZCwgMTAzNSBpbnNlcnRpb25zKCspLCA2
MCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9jcmFtL2lucHV0cy9pbnZh
bGlkLnVjZXJ0CiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvY3JhbS9pbnB1dHMva2V5LWJ1aWxk
LnVjZXJ0CiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvY3JhbS90ZXN0X2Jsb2JfcGFyc2UudAog
Y3JlYXRlIG1vZGUgMTAwNjQ0IHRlc3RzL2NyYW0vdGVzdF9ibG9ibXNnX3BhcnNlLnQKIGNyZWF0
ZSBtb2RlIDEwMDY0NCB0ZXN0cy9mdXp6L0NNYWtlTGlzdHMudHh0CiBjcmVhdGUgbW9kZSAxMDA2
NDQgdGVzdHMvZnV6ei9jb3JwdXMvNzE1MjBhNWM0YjVjYTczOTAzMjE2ODU3YWJiYWQ1NGE4MDAy
ZDQ0YQogY3JlYXRlIG1vZGUgMTAwNjQ0IHRlc3RzL2Z1enovY29ycHVzL2MxZGZkOTZlZWE4Y2My
YjYyNzg1Mjc1YmNhMzhhYzI2MTI1NmUyNzgKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9mdXp6
L2NvcnB1cy9jNDJhYzFjNDZmMWQ0ZTIxMWM3MzVjYzdkZmFkNGZmODM5MTExMGU5CiBjcmVhdGUg
bW9kZSAxMDA2NDQgdGVzdHMvZnV6ei9jb3JwdXMvY3Jhc2gtMWI4ZmIxYmU0NWRiM2FmZjc2OTkx
MDBmNDk3ZmI3NDEzOGYzZGY0ZgogY3JlYXRlIG1vZGUgMTAwNjQ0IHRlc3RzL2Z1enovY29ycHVz
L2NyYXNoLTMzMzc1N2IyMDNhNDQ3NTFkMzUzNWYyNGIwNWY0NjcxODNhOTZkMDkKIGNyZWF0ZSBt
b2RlIDEwMDY0NCB0ZXN0cy9mdXp6L2NvcnB1cy9jcmFzaC00YzRkMmMzYzlhZGU1ZGE5MzQ3NTM0
ZTI5MDMwNWMzYjk3NjBmNjI3CiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvZnV6ei9jb3JwdXMv
Y3Jhc2gtNWU5OTM3YjE5N2M4OGJmNGU3YjdlZTI2MTI0NTZjYWQ0Y2I4M2Y1YgogY3JlYXRlIG1v
ZGUgMTAwNjQ0IHRlc3RzL2Z1enovY29ycHVzL2NyYXNoLTc1YjE0NmM0ZTZmYWM2NGQzZTYyMjM2
YjI3YzY0YjUwNjU3YmFiMmEKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9mdXp6L2NvcnB1cy9j
cmFzaC04MTNmM2U2ODY2MWRhMDljMjZkNGE4N2RiYjlkNTA5OWU5MmJlNTBmCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgdGVzdHMvZnV6ei9jb3JwdXMvY3Jhc2gtOTg1OTVmYWE1OGJhMDFkODViYTRmZDBi
MTA5Y2QzZDQ5MGI0NTc5NQogY3JlYXRlIG1vZGUgMTAwNjQ0IHRlc3RzL2Z1enovY29ycHVzL2Ny
YXNoLWQwZjNhYTdkNjBhMDk0YjAyMWY2MzVkNGVkYjc4MDdjMDU1YTRlYTEKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCB0ZXN0cy9mdXp6L2NvcnB1cy9jcmFzaC1kZjlkMTI0MzA1N2IyN2JiYWQ2MjExZTVh
MjNkMWNiNjk5MDI4YWEyCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvZnV6ei9jb3JwdXMvY3Jh
c2gtZTJmZDVlY2IzYjM3OTI2NzQzMjU2ZjEwODNmNDdhMDdjMzllMTBjMgogY3JlYXRlIG1vZGUg
MTAwNjQ0IHRlc3RzL2Z1enovY29ycHVzL3ZhbGlkLWJsb2Jtc2cuYmluCiBjcmVhdGUgbW9kZSAx
MDA2NDQgdGVzdHMvZnV6ei90ZXN0LWZ1enouYwogY3JlYXRlIG1vZGUgMTAwNjQ0IHRlc3RzL3Rl
c3QtYmxvYi1wYXJzZS5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvdGVzdC1ibG9ibXNnLXBh
cnNlLmMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
