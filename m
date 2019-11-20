Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 947BF1045F7
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 22:44:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=32o/lzOTuqL4ZPm055fPW2QlaevJ83/Xdle+RW1ooGI=; b=VhL31h0DPlmgrU
	k1ZeKjNny3H4BqyNa3H3U4qRIJzPrPN8AJJpt6Bp/bz0tTIpNPQznbafQ+OhV5DgW72jQ+FmhKVUM
	XV6B2Qw5nh6M3N5MiVTuH7KmkSF+v3pplXL+dGBkEe6eMYECtx+e3m5m7d5d0CGx6andujgCaA6Ck
	uqCGOvABn1qbBjFzG+lUchpUn2Zokd8ga+vUfvrdo7mIOwzy4ZxGuGULlMcKH+bDaXiyGqIhYpqx2
	MmgoSIho/ODIakEPcvEm5JDYj17C8NZwIK7V0VgnfOzX5kWDHMC+Xoo9VwPPCWXZ+Dfu6HMP0XmNM
	P3uvnI2dR/4TvXaLVEAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXXll-0005q4-MP; Wed, 20 Nov 2019 21:44:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXXla-0005nL-Bi
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 21:44:03 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A49844AD4;
 Wed, 20 Nov 2019 22:43:59 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 146a9aef;
 Wed, 20 Nov 2019 22:43:49 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 Nov 2019 22:43:43 +0100
Message-Id: <20191120214353.27652-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_134402_556869_5561D395 
X-CRM114-Status: UNSURE (   7.20  )
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
Subject: [OpenWrt-Devel] [PATCH v2 libubox 00/10] fixes,
 unit tests and GitLab CI
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
dmwvYmFzZTY0L2pzaG4gY29tcG9uZW50cyBhbmQgYWRkZWQgR2l0TGFiIENJIHN1cHBvcnQuCgpD
aGFuZ2VzIGluIHYyOgoKIC0gbWFrZSBhdmwsIGJhc2U2NCBjcmFzaCB3aXRoIGludmFsaWQgaW5w
dXRzICh5b3Vzb25nKQogLSBrZWVwIGJpc2VjdGFiaWxpdHkgKGpvbmFzKQoKUGV0ciDFoHRldGlh
ciAoMTApOgogIGlyb24gb3V0IGFsbCBleHRyYSBjb21waWxlciB3YXJuaW5ncwogIGVuYWJsZSBl
eHRyYSBjb21waWxlciBjaGVja3MKICBhZGQgaW5pdGlhbCBHaXRMYWIgQ0kgc3VwcG9ydAogIGFk
ZCBjcmFtIGJhc2VkIHVuaXQgdGVzdHMKICBhZGQgYXNzZXJ0LmggY29tcG9uZW50CiAgYmFzZTY0
OiBmaXggcG9zc2libGUgbnVsbCBwb2ludGVyIGRlcmVmZXJlbmNlCiAganNobjogbWFpbjogZml4
IGxlYWsgb2YgbWVtb3J5IHBvaW50ZWQgdG8gYnkgJ3ZhcnMnCiAganNobjoganNobl9wYXJzZTog
Zml4IGxlYWtzIG9mIG1lbW9yeSBwb2ludGVkIHRvIGJ5ICdvYmonCiAgYmxvYm1zZ19qc29uOiBm
aXggcG9zc2libGUgdW5pbml0aWFsaXplZCBzdHJ1Y3QgbWVtYmVyCiAgYXZsOiBndWFyZCBhZ2Fp
bnN0IHRoZW9yZXRpY2FsIG51bGwgcG9pbnRlciBkZXJlZmVyZW5jZQoKIC5naXRsYWItY2kueW1s
ICAgICAgICAgICAgICAgICB8ICA3ICsrKwogQ01ha2VMaXN0cy50eHQgICAgICAgICAgICAgICAg
IHwgIDcgKystCiBhc3NlcnQuaCAgICAgICAgICAgICAgICAgICAgICAgfCAgOSArKysrCiBhdmwu
YyAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMiArCiBiYXNlNjQuYyAgICAgICAgICAgICAg
ICAgICAgICAgfCAxMSArKysrLQogYmxvYi5jICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDYg
Ky0tCiBibG9iLmggICAgICAgICAgICAgICAgICAgICAgICAgfCAgNiArLS0KIGJsb2Jtc2cuYyAg
ICAgICAgICAgICAgICAgICAgICB8ICAyICstCiBibG9ibXNnX2pzb24uYyAgICAgICAgICAgICAg
ICAgfCAgOCArKy0tCiBleGFtcGxlcy9ibG9ibXNnLWV4YW1wbGUuYyAgICAgfCAgMiArLQogZXhh
bXBsZXMvanNvbl9zY3JpcHQtZXhhbXBsZS5jIHwgIDIgKy0KIGpzaG4uYyAgICAgICAgICAgICAg
ICAgICAgICAgICB8ICA0ICsrCiBqc29uX3NjcmlwdC5jICAgICAgICAgICAgICAgICAgfCAxNyAr
KysrLS0tCiB0ZXN0cy9DTWFrZUxpc3RzLnR4dCAgICAgICAgICAgfCAxMiArKysrKwogdGVzdHMv
Y3JhbS9DTWFrZUxpc3RzLnR4dCAgICAgIHwgMjkgKysrKysrKysrKysrCiB0ZXN0cy9jcmFtL3Rl
c3RfYXZsLnQgICAgICAgICAgfCAxMCArKysrCiB0ZXN0cy9jcmFtL3Rlc3RfYmFzZTY0LnQgICAg
ICAgfCAyNSArKysrKysrKysrCiB0ZXN0cy9jcmFtL3Rlc3RfanNobi50ICAgICAgICAgfCAyNSAr
KysrKysrKysrCiB0ZXN0cy90ZXN0LWF2bC5jICAgICAgICAgICAgICAgfCA4NyArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrCiB0ZXN0cy90ZXN0LWI2NC5jICAgICAgICAgICAgICAg
fCAzOSArKysrKysrKysrKysrKysKIHRlc3RzL3Rlc3QtYjY0X2RlY29kZS5jICAgICAgICB8ICA3
ICsrKwogdGVzdHMvdGVzdC1iNjRfZW5jb2RlLmMgICAgICAgIHwgIDcgKysrCiAyMiBmaWxlcyBj
aGFuZ2VkLCAzMDEgaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAx
MDA2NDQgLmdpdGxhYi1jaS55bWwKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhc3NlcnQuaAogY3JlYXRl
IG1vZGUgMTAwNjQ0IHRlc3RzL0NNYWtlTGlzdHMudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVz
dHMvY3JhbS9DTWFrZUxpc3RzLnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0IHRlc3RzL2NyYW0vdGVz
dF9hdmwudAogY3JlYXRlIG1vZGUgMTAwNjQ0IHRlc3RzL2NyYW0vdGVzdF9iYXNlNjQudAogY3Jl
YXRlIG1vZGUgMTAwNjQ0IHRlc3RzL2NyYW0vdGVzdF9qc2huLnQKIGNyZWF0ZSBtb2RlIDEwMDY0
NCB0ZXN0cy90ZXN0LWF2bC5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvdGVzdC1iNjQuYwog
Y3JlYXRlIG1vZGUgMTAwNjQ0IHRlc3RzL3Rlc3QtYjY0X2RlY29kZS5jCiBjcmVhdGUgbW9kZSAx
MDA2NDQgdGVzdHMvdGVzdC1iNjRfZW5jb2RlLmMKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
