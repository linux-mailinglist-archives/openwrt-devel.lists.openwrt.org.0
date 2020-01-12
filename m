Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE0B1388A4
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 23:56:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0a3bKCo6ejd3EEKPNLSHe29ehq7sQXfC/CsUuDpsx+U=; b=WMdfqLYX4NaqbL
	5oZXFzAagSD11PchzuNcRNN7oCxHqbRcJdBFHrYVDIO1UBc16Jqo0rs3S3/Tuim5GYpkgfIdWBwT+
	kQ5KcCZtEReV4aqNEkM1SDN3xM/IvprQi3Twb5IbH0Q0t1lFwH2r53rbja22zNwYde8nDnfGnnr1a
	e4GqprQOF1drf0qh4wxHmLbycIxsM2um+SkCo6UYUsdNCQN9b+COebnCQgACtIrIsuNOIp9C8Q53j
	0hjrcyvApaYOduyxrKo2Jjfe29sWAyopxaax7iEbMytuHtF0bt21IylTupQpzDgBO1FP0s1F72Aix
	c105Rw3ViMrH/MnkFsDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqm9H-0001d6-6D; Sun, 12 Jan 2020 22:55:59 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqm8m-0001Cl-LC
 for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 22:55:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id F2995378D;
 Sun, 12 Jan 2020 23:55:22 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id fa2145ee;
 Sun, 12 Jan 2020 23:55:12 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 Jan 2020 23:55:15 +0100
Message-Id: <20200112225515.11654-5-ynezz@true.cz>
In-Reply-To: <20200112225515.11654-1-ynezz@true.cz>
References: <20200112225515.11654-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_145529_006085_46FB7DF1 
X-CRM114-Status: UNSURE (   7.17  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 4/4] blobmsg:
 blobmsg_add_json_element() 64-bit values
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
Cc: Dainis Jonitis <dainis.jonitis@ubnt.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogRGFpbmlzIEpvbml0aXMgPGRhaW5pcy5qb25pdGlzQHVibnQuY29tPgoKbGlianNvbi1j
IGpzb25fdHlwZV9pbnQgdmFsdWVzIGFyZSBzdG9yZWQgYXMgaW50NjRfdC4gVXNlCmpzb25fb2Jq
ZWN0X2dldF9pbnQ2NCgpIGluc3RlYWQgb2YganNvbl9vYmplY3RfZ2V0X2ludCgpCnRvIGF2b2lk
IGNsYW1waW5nIHRvIElOVDMyX01BWC4KClNpZ25lZC1vZmYtYnk6IERhaW5pcyBKb25pdGlzIDxk
YWluaXMuam9uaXRpc0B1Ym50LmNvbT4KW2ZpeGVkIGF1dGhvciB0byBtYXRjaCBTb0IsIGFkZGVk
IHVuaXQgdGVzdCByZXN1bHRzXQpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0
cnVlLmN6PgotLS0KIGJsb2Jtc2dfanNvbi5jICAgICAgICAgICAgfCAxMCArKysrKysrKy0tCiB0
ZXN0cy9jcmFtL3Rlc3RfYmxvYm1zZy50IHwgMzIgKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0t
LS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvYmxvYm1zZ19qc29uLmMgYi9ibG9ibXNnX2pzb24uYwppbmRleCBhZWU3
YTY0ZmJjYTcuLmFlZGMyZGEyMmViYyAxMDA2NDQKLS0tIGEvYmxvYm1zZ19qc29uLmMKKysrIGIv
YmxvYm1zZ19qc29uLmMKQEAgLTY2LDkgKzY2LDE1IEBAIGJvb2wgYmxvYm1zZ19hZGRfanNvbl9l
bGVtZW50KHN0cnVjdCBibG9iX2J1ZiAqYiwgY29uc3QgY2hhciAqbmFtZSwganNvbl9vYmplY3QK
IAljYXNlIGpzb25fdHlwZV9ib29sZWFuOgogCQlibG9ibXNnX2FkZF91OChiLCBuYW1lLCBqc29u
X29iamVjdF9nZXRfYm9vbGVhbihvYmopKTsKIAkJYnJlYWs7Ci0JY2FzZSBqc29uX3R5cGVfaW50
OgotCQlibG9ibXNnX2FkZF91MzIoYiwgbmFtZSwganNvbl9vYmplY3RfZ2V0X2ludChvYmopKTsK
KwljYXNlIGpzb25fdHlwZV9pbnQ6IHsKKwkJaW50NjRfdCBpNjQgPSBqc29uX29iamVjdF9nZXRf
aW50NjQob2JqKTsKKwkJaWYgKGk2NCA+PSBJTlQzMl9NSU4gJiYgaTY0IDw9IElOVDMyX01BWCkg
eworCQkJYmxvYm1zZ19hZGRfdTMyKGIsIG5hbWUsICh1aW50MzJfdClpNjQpOworCQl9IGVsc2Ug
eworCQkJYmxvYm1zZ19hZGRfdTY0KGIsIG5hbWUsICh1aW50NjRfdClpNjQpOworCQl9CiAJCWJy
ZWFrOworCX0KIAljYXNlIGpzb25fdHlwZV9kb3VibGU6CiAJCWJsb2Jtc2dfYWRkX2RvdWJsZShi
LCBuYW1lLCBqc29uX29iamVjdF9nZXRfZG91YmxlKG9iaikpOwogCQlicmVhazsKZGlmZiAtLWdp
dCBhL3Rlc3RzL2NyYW0vdGVzdF9ibG9ibXNnLnQgYi90ZXN0cy9jcmFtL3Rlc3RfYmxvYm1zZy50
CmluZGV4IDg0ZWMxNDNkNmZmMS4uNzRhZDMyNjkzMWZlIDEwMDY0NAotLS0gYS90ZXN0cy9jcmFt
L3Rlc3RfYmxvYm1zZy50CisrKyBiL3Rlc3RzL2NyYW0vdGVzdF9ibG9ibXNnLnQKQEAgLTQ2LDgg
KzQ2LDggQEAgY2hlY2sgdGhhdCBibG9ibXNnIGlzIHByb2R1Y2luZyBleHBlY3RlZCByZXN1bHRz
OgogICAzMjc2NyAoaTMyKQogICAtMjE0NzQ4MzY0OCAoaTMyKQogICAyMTQ3NDgzNjQ3IChpMzIp
Ci0gIC0yMTQ3NDgzNjQ4IChpMzIpCi0gIDIxNDc0ODM2NDcgKGkzMikKKyAgLTkyMjMzNzIwMzY4
NTQ3NzU4MDggKGk2NCkKKyAgOTIyMzM3MjAzNjg1NDc3NTgwNyAoaTY0KQogICAxMzMuNzAwMDAw
IChkYmwpCiAgIH0KICAgVGVzdGRhdGE6IHsKQEAgLTYwLDggKzYwLDggQEAgY2hlY2sgdGhhdCBi
bG9ibXNnIGlzIHByb2R1Y2luZyBleHBlY3RlZCByZXN1bHRzOgogICBcdGJhci1tYXggOiAzMjc2
NyAoaTMyKSAoZXNjKQogICBcdGJhei1taW4gOiAtMjE0NzQ4MzY0OCAoaTMyKSAoZXNjKQogICBc
dGJhei1tYXggOiAyMTQ3NDgzNjQ3IChpMzIpIChlc2MpCi0gIFx0dGF6LW1pbiA6IC0yMTQ3NDgz
NjQ4IChpMzIpIChlc2MpCi0gIFx0dGF6LW1heCA6IDIxNDc0ODM2NDcgKGkzMikgKGVzYykKKyAg
XHR0YXotbWluIDogLTkyMjMzNzIwMzY4NTQ3NzU4MDggKGk2NCkgKGVzYykKKyAgXHR0YXotbWF4
IDogOTIyMzM3MjAzNjg1NDc3NTgwNyAoaTY0KSAoZXNjKQogICBcdHdvcmxkIDogMiAoc3RyKSAo
ZXNjKQogICB9CiAKQEAgLTEwOSw4ICsxMDksOCBAQCBjaGVjayB0aGF0IGJsb2Jtc2cgaXMgcHJv
ZHVjaW5nIGV4cGVjdGVkIHJlc3VsdHM6CiAgIDMyNzY3IChpMzIpCiAgIC0yMTQ3NDgzNjQ4IChp
MzIpCiAgIDIxNDc0ODM2NDcgKGkzMikKLSAgLTIxNDc0ODM2NDggKGkzMikKLSAgMjE0NzQ4MzY0
NyAoaTMyKQorICAtOTIyMzM3MjAzNjg1NDc3NTgwOCAoaTY0KQorICA5MjIzMzcyMDM2ODU0Nzc1
ODA3IChpNjQpCiAgIDEzMy43MDAwMDAgKGRibCkKICAgfQogICBUZXN0ZGF0YTogewpAQCAtMTIz
LDggKzEyMyw4IEBAIGNoZWNrIHRoYXQgYmxvYm1zZyBpcyBwcm9kdWNpbmcgZXhwZWN0ZWQgcmVz
dWx0czoKICAgXHRiYXItbWF4IDogMzI3NjcgKGkzMikgKGVzYykKICAgXHRiYXotbWluIDogLTIx
NDc0ODM2NDggKGkzMikgKGVzYykKICAgXHRiYXotbWF4IDogMjE0NzQ4MzY0NyAoaTMyKSAoZXNj
KQotICBcdHRhei1taW4gOiAtMjE0NzQ4MzY0OCAoaTMyKSAoZXNjKQotICBcdHRhei1tYXggOiAy
MTQ3NDgzNjQ3IChpMzIpIChlc2MpCisgIFx0dGF6LW1pbiA6IC05MjIzMzcyMDM2ODU0Nzc1ODA4
IChpNjQpIChlc2MpCisgIFx0dGF6LW1heCA6IDkyMjMzNzIwMzY4NTQ3NzU4MDcgKGk2NCkgKGVz
YykKICAgXHR3b3JsZCA6IDIgKHN0cikgKGVzYykKICAgfQogCkBAIC0xNzIsOCArMTcyLDggQEAg
Y2hlY2sgdGhhdCBibG9ibXNnIGlzIHByb2R1Y2luZyBleHBlY3RlZCByZXN1bHRzOgogICAzMjc2
NyAoaTMyKQogICAtMjE0NzQ4MzY0OCAoaTMyKQogICAyMTQ3NDgzNjQ3IChpMzIpCi0gIC0yMTQ3
NDgzNjQ4IChpMzIpCi0gIDIxNDc0ODM2NDcgKGkzMikKKyAgLTkyMjMzNzIwMzY4NTQ3NzU4MDgg
KGk2NCkKKyAgOTIyMzM3MjAzNjg1NDc3NTgwNyAoaTY0KQogICAxMzMuNzAwMDAwIChkYmwpCiAg
IH0KICAgVGVzdGRhdGE6IHsKQEAgLTE4Niw4ICsxODYsOCBAQCBjaGVjayB0aGF0IGJsb2Jtc2cg
aXMgcHJvZHVjaW5nIGV4cGVjdGVkIHJlc3VsdHM6CiAgIFx0YmFyLW1heCA6IDMyNzY3IChpMzIp
IChlc2MpCiAgIFx0YmF6LW1pbiA6IC0yMTQ3NDgzNjQ4IChpMzIpIChlc2MpCiAgIFx0YmF6LW1h
eCA6IDIxNDc0ODM2NDcgKGkzMikgKGVzYykKLSAgXHR0YXotbWluIDogLTIxNDc0ODM2NDggKGkz
MikgKGVzYykKLSAgXHR0YXotbWF4IDogMjE0NzQ4MzY0NyAoaTMyKSAoZXNjKQorICBcdHRhei1t
aW4gOiAtOTIyMzM3MjAzNjg1NDc3NTgwOCAoaTY0KSAoZXNjKQorICBcdHRhei1tYXggOiA5MjIz
MzcyMDM2ODU0Nzc1ODA3IChpNjQpIChlc2MpCiAgIFx0d29ybGQgOiAyIChzdHIpIChlc2MpCiAg
IH0KIApAQCAtMjM1LDggKzIzNSw4IEBAIGNoZWNrIHRoYXQgYmxvYm1zZyBpcyBwcm9kdWNpbmcg
ZXhwZWN0ZWQgcmVzdWx0czoKICAgMzI3NjcgKGkzMikKICAgLTIxNDc0ODM2NDggKGkzMikKICAg
MjE0NzQ4MzY0NyAoaTMyKQotICAtMjE0NzQ4MzY0OCAoaTMyKQotICAyMTQ3NDgzNjQ3IChpMzIp
CisgIC05MjIzMzcyMDM2ODU0Nzc1ODA4IChpNjQpCisgIDkyMjMzNzIwMzY4NTQ3NzU4MDcgKGk2
NCkKICAgMTMzLjcwMDAwMCAoZGJsKQogICB9CiAgIFRlc3RkYXRhOiB7CkBAIC0yNDksNyArMjQ5
LDcgQEAgY2hlY2sgdGhhdCBibG9ibXNnIGlzIHByb2R1Y2luZyBleHBlY3RlZCByZXN1bHRzOgog
ICBcdGJhci1tYXggOiAzMjc2NyAoaTMyKSAoZXNjKQogICBcdGJhei1taW4gOiAtMjE0NzQ4MzY0
OCAoaTMyKSAoZXNjKQogICBcdGJhei1tYXggOiAyMTQ3NDgzNjQ3IChpMzIpIChlc2MpCi0gIFx0
dGF6LW1pbiA6IC0yMTQ3NDgzNjQ4IChpMzIpIChlc2MpCi0gIFx0dGF6LW1heCA6IDIxNDc0ODM2
NDcgKGkzMikgKGVzYykKKyAgXHR0YXotbWluIDogLTkyMjMzNzIwMzY4NTQ3NzU4MDggKGk2NCkg
KGVzYykKKyAgXHR0YXotbWF4IDogOTIyMzM3MjAzNjg1NDc3NTgwNyAoaTY0KSAoZXNjKQogICBc
dHdvcmxkIDogMiAoc3RyKSAoZXNjKQogICB9CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
