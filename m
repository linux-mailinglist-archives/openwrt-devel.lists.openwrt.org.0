Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFCF12D939
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 14:49:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EP1FvgLMKO79DKG6Gh1jo6yrV/itUi5i31JP+FAJ2Uw=; b=dosfDixCRmqKpC33B4+WJ6NY2B
	gUdu9OwMMMr1vFfhim+Z4e1xY/eWFaD0e4MCB+3qwX+u2oP2+4l/B6BrFBmvfnMQ2eSe3h+YDx0V2
	CV9RwHtmrTaG0mna8zUKiuIbmXdff1PsOgKwLcj1ZsooS//xZ/v502B71RT/iowuXGuWJ29WT2qNO
	HwbIcyxWlt5RJPkhIE18flwDZj7D+D473590xtVaQ2apGiHaD0iuTfEGPPGhBNSprrK74YFCsZ3ef
	AsLo5IJ4C2k2qa8HHyYtnuKrBMSUCDplEL5WC/VcBqaXvb6YXVoPtq5Ct/o5LYvVwkxxT6eg4w31y
	PwRckfBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imHu6-0004zm-9C; Tue, 31 Dec 2019 13:49:46 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imHu0-0004zB-48
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 13:49:41 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id AAEA3333C;
 Tue, 31 Dec 2019 14:49:36 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id fb2e6440;
 Tue, 31 Dec 2019 14:49:25 +0100 (CET)
Date: Tue, 31 Dec 2019 14:49:25 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Petr =?utf-8?B?Tm92w6Fr?= <petrn@me.com>
Message-ID: <20191231134925.GL70184@meh.true.cz>
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
 <20191229222123.GH70184@meh.true.cz>
 <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_054940_317116_B3946757 
X-CRM114-Status: UNSURE (   4.24  )
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Hannu Nyman <hannu.nyman@welho.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciBOb3bDoWsgPHBldHJuQG1lLmNvbT4gWzIwMTktMTItMzEgMTE6MDM6MjNdOgoKPiByb290
QE9wZW5XcnQ6L3RtcCMgc3lzdXBncmFkZSAtdiBvcGVud3J0LWJyY20yNzA4LWJjbTI3MTEtcnBp
LTQtZXh0NC1zeXN1cGdyYWRlLmltZy5nego+IFJlYWRpbmcgcGFydGl0aW9uIHRhYmxlIGZyb20g
Ym9vdGRpc2suLi4KPiBSZWFkaW5nIHBhcnRpdGlvbiB0YWJsZSBmcm9tIGltYWdlLi4uCgpUaGlz
IG91dHB1dCBpcyBmcm9tIC9zYmluL3N5c3VwZ3JhZGUgY2FsbGluZyAvdXNyL2xpYmV4ZWMvdmFs
aWRhdGVfZmlybXdhcmVfaW1hZ2U6Cgo+IHsKPiAJInRlc3RzIjogewo+IAkJImZ3dG9vbF9zaWdu
YXR1cmUiOiB0cnVlLAo+IAkJImZ3dG9vbF9kZXZpY2VfbWF0Y2giOiB0cnVlCj4gCX0sCj4gCSJ2
YWxpZCI6IHRydWUsCj4gCSJmb3JjZWFibGUiOiB0cnVlLAo+IAkiYWxsb3dfYmFja3VwIjogdHJ1
ZQo+IH0KPiBTYXZpbmcgY29uZmlnIGZpbGVzLi4uCgouLi5zbmlwLi4uCgo+IENvbW1lbmNpbmcg
dXBncmFkZS4gQ2xvc2luZyBhbGwgc2hlbGwgc2Vzc2lvbnMuCgphbmQgaGVyZSBzaG91bGQgYmUg
c2FtZSBvdXRwdXQgZnJvbSBwcm9jZCBjYWxsaW5nCi91c3IvbGliZXhlYy92YWxpZGF0ZV9maXJt
d2FyZV9pbWFnZSwgYnV0IGl0IGlzIG1pc3NpbmcgYXMgcHJvYmFibHkgcHJvY2QKY29uc3VtZXMg
dGhlIHN0ZGVyciBvdXRwdXQsIHNvIHByb2JhYmx5IHNvbWV0aGluZyBsaWtlIHRoaXMgaXMgbmVl
ZGVkOgoKIGRpZmYgLS1naXQgYS9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvdXNyL2xpYmV4ZWMv
dmFsaWRhdGVfZmlybXdhcmVfaW1hZ2UKIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3Vzci9s
aWJleGVjL3ZhbGlkYXRlX2Zpcm13YXJlX2ltYWdlCiBpbmRleCBmODVmYjllNGI0MzUuLjc1NGQ1
M2IyZWRmZSAxMDA3NTUKIC0tLSBhL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy91c3IvbGliZXhl
Yy92YWxpZGF0ZV9maXJtd2FyZV9pbWFnZQogKysrIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVz
L3Vzci9saWJleGVjL3ZhbGlkYXRlX2Zpcm13YXJlX2ltYWdlCiBAQCAtNjIsNSArNjIsNiBAQCBq
c29uX2luaXQKIAlqc29uX2FkZF9ib29sZWFuIHZhbGlkICIkVkFMSUQiCiAJanNvbl9hZGRfYm9v
bGVhbiBmb3JjZWFibGUgIiRGT1JDRUFCTEUiCiAJanNvbl9hZGRfYm9vbGVhbiBhbGxvd19iYWNr
dXAgIiRBTExPV19CQUNLVVAiCiAranNvbl9kdW1wIC1pID4+IC90bXAvdmZpLWpzb24ubG9nCiAg
anNvbl9kdW1wIC1pCiAganNvbl9zZXRfbmFtZXNwYWNlICRvbGRfbnMKCmFuZCB0aGVuIHJ1bjoK
CiAkIHVidXMgbW9uaXRvciAmCiAkIHN5c3VwZ3JhZGUgLXYgb3BlbndydC1icmNtMjcwOC1iY20y
NzExLXJwaS00LWV4dDQtc3lzdXBncmFkZS5pbWcuZ3oKICQgY2F0IC90bXAvdmZpLWpzb24ubG9n
CgotLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
