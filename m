Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4E310394D
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 12:59:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vu6xaDiwrhhju3NanOrGXEFgpvcFYvJiipgvNKGOA2M=; b=qs+gZ/JB5ZJOt9
	JSwOwAaKZkrd8BqPQcl/cGn2/ndJw3e60qk1YsYW4Vg7F19x6q4S9Ei2O1rdt/AQBSH1Xei9Mvznv
	/V4/NFxIYtVyzgd7JQ5dBVInHbxEPAYa0nC7d61NTUCgjfxN1Jaw4YaV7LmqHkHX9r/U2Urg3YjxH
	xX/TFyoWlB4NuYQrc2knkJXog4fT1ufyJIG7YI0a2egSdDpS1fj99wBTmxpOSGeGp/k0AOBq3bd0K
	ryRPqHI/OmxvVFSFiknS+YP29ZaDDbpTqyccLO31Tcc7aXvmNeCRfPI7+ThTExTR8nowckZvpIdWg
	CcxL+clOu+zMmTGp8OAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOeB-0001a5-Sd; Wed, 20 Nov 2019 11:59:47 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOe1-0001XR-Ug
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 11:59:39 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 29A094667;
 Wed, 20 Nov 2019 12:59:30 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id ca199d6d;
 Wed, 20 Nov 2019 12:59:19 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 Nov 2019 12:59:17 +0100
Message-Id: <20191120115926.23272-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_035938_143226_6876243A 
X-CRM114-Status: UNSURE (   6.68  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 0/9] fixes,
 some unit tests and GitLab CI
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

SGksCgpJJ3ZlIG1hZGUgbGlidWJveCBjb21waWxlIHdpdGggLVdleHRyYSBmbGFncywgdHJpZWQg
dG8gbWFrZSBjbGFuZy9jcHBjaGVjawpzdGF0aWMgY29kZSBhbmFseXplcnMgaGFwcHksIGZpeGVk
IHNvbWUgbWVtbGVha3MsIGFkZGVkIGluaXRpYWwgY3JhbSBiYXNlZAp1bml0IHRlc3RzIGZvciBh
dmwvYmFzZTY0L2pzaG4gY29tcG9uZW50cyBhbmQgYWRkZWQgR2l0TGFiIENJIHN1cHBvcnRbMV0u
CgoxLiBodHRwczovL2dpdGxhYi5jb20veW5lenovb3BlbndydC1saWJ1Ym94L3BpcGVsaW5lcy85
NzI1NTYxMC9idWlsZHMKClBldHIgxaB0ZXRpYXIgKDkpOgogIGVuYWJsZSBleHRyYSBjb21waWxl
ciBjaGVja3MKICBpcm9uIG91dCBhbGwgZXh0cmEgY29tcGlsZXIgd2FybmluZ3MKICBhZGQgaW5p
dGlhbCBHaXRMYWIgQ0kgc3VwcG9ydAogIGFkZCBjcmFtIGJhc2VkIHVuaXQgdGVzdHMKICBiYXNl
NjQ6IGI2NF9kZWNvZGU6IGZpeCBwb3NzaWJsZSBudWxsIHBvaW50ZXIgZGVyZWZlcmVuY2UKICBq
c2huOiBtYWluOiBmaXggbGVhayBvZiBtZW1vcnkgcG9pbnRlZCB0byBieSAndmFycycKICBqc2hu
OiBqc2huX3BhcnNlOiBmaXggbGVha3Mgb2YgbWVtb3J5IHBvaW50ZWQgdG8gYnkgJ29iaicKICBi
bG9ibXNnX2pzb246IGZpeCBwb3NzaWJsZSB1bmluaXRpYWxpemVkIHN0cnVjdCBtZW1iZXIKICBh
dmw6IGd1YXJkIGFnYWluc3QgdGhlb3JldGljYWwgbnVsbCBwb2ludGVyIGRlcmVmZXJlbmNlCgog
LmdpdGxhYi1jaS55bWwgICAgICAgICAgICAgICAgIHwgIDcgKysrCiBDTWFrZUxpc3RzLnR4dCAg
ICAgICAgICAgICAgICAgfCAgNyArKy0KIGF2bC5jICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAzICstCiBiYXNlNjQuYyAgICAgICAgICAgICAgICAgICAgICAgfCAxMSArKysrLQogYmxvYi5j
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDYgKy0tCiBibG9iLmggICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgNiArLS0KIGJsb2Jtc2cuYyAgICAgICAgICAgICAgICAgICAgICB8ICAyICst
CiBibG9ibXNnX2pzb24uYyAgICAgICAgICAgICAgICAgfCAgOCArKy0tCiBleGFtcGxlcy9ibG9i
bXNnLWV4YW1wbGUuYyAgICAgfCAgMiArLQogZXhhbXBsZXMvanNvbl9zY3JpcHQtZXhhbXBsZS5j
IHwgIDIgKy0KIGpzaG4uYyAgICAgICAgICAgICAgICAgICAgICAgICB8ICA0ICsrCiBqc29uX3Nj
cmlwdC5jICAgICAgICAgICAgICAgICAgfCAxNyArKysrLS0tCiB0ZXN0cy9DTWFrZUxpc3RzLnR4
dCAgICAgICAgICAgfCAxMCArKysrCiB0ZXN0cy9jcmFtL0NNYWtlTGlzdHMudHh0ICAgICAgfCAy
NyArKysrKysrKysrKwogdGVzdHMvY3JhbS90ZXN0X2F2bC50ICAgICAgICAgIHwgMTAgKysrKwog
dGVzdHMvY3JhbS90ZXN0X2Jhc2U2NC50ICAgICAgIHwgMTcgKysrKysrKwogdGVzdHMvY3JhbS90
ZXN0X2pzaG4udCAgICAgICAgIHwgMjUgKysrKysrKysrKwogdGVzdHMvdGVzdC1hdmwuYyAgICAg
ICAgICAgICAgIHwgODcgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogdGVzdHMv
dGVzdC1iYXNlNjQuYyAgICAgICAgICAgIHwgNTQgKysrKysrKysrKysrKysrKysrKysrCiAxOSBm
aWxlcyBjaGFuZ2VkLCAyODEgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCiBjcmVhdGUg
bW9kZSAxMDA2NDQgLmdpdGxhYi1jaS55bWwKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9DTWFr
ZUxpc3RzLnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0IHRlc3RzL2NyYW0vQ01ha2VMaXN0cy50eHQK
IGNyZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9jcmFtL3Rlc3RfYXZsLnQKIGNyZWF0ZSBtb2RlIDEw
MDY0NCB0ZXN0cy9jcmFtL3Rlc3RfYmFzZTY0LnQKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9j
cmFtL3Rlc3RfanNobi50CiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvdGVzdC1hdmwuYwogY3Jl
YXRlIG1vZGUgMTAwNjQ0IHRlc3RzL3Rlc3QtYmFzZTY0LmMKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
