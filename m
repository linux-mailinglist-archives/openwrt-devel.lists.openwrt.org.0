Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F21E3DEECA
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 16:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oPH2itnajabGGZTAlhUyg2xeuWx9vLjow7Zsut9FhyQ=; b=Oz1HK1EFXdHM7ICyBo/LcraecP
	DUXo3XoXVKPT9VkWvAnhrzLyr6n2BlpRlNWzwc4hxO1otm6KaGykgf8YSLKkTIaU2tLhg6W4AUIWU
	I6KAcCN1wFpedeM08V4ihbHyN3sqvBUKGJm2fJFyb4OYIQjGwORfc1Oa9caPk3V2bM9jmMnjiiK8S
	NWveA5ywz2MEJUx/UExBbwXgQdZ7YZUWPqtyrMkG0vtZS3FlIp1/IscGMFFm5S/8g6WOp1e2LbN87
	AjCyDzYKcwVuSPDiOYsnNsGfblNRupFLEBFSaoRW2wK/U0TXJKYtVdlYGx4ggJoUGEF3pKGsmN2AY
	rUR4JnWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYL0-000505-5n; Mon, 21 Oct 2019 14:07:10 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYKt-0004zN-0f
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 14:07:04 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D9F49431F;
 Mon, 21 Oct 2019 16:07:00 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id a8b4273f;
 Mon, 21 Oct 2019 16:06:50 +0200 (CEST)
Date: Mon, 21 Oct 2019 16:06:50 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: =?utf-8?B?QW5kcsOp?= Valentin <avalentin@marcant.net>
Message-ID: <20191021140650.GG52694@meh.true.cz>
References: <20191021123214.2252-1-avalentin@marcant.net>
 <20191021123214.2252-5-avalentin@marcant.net>
 <20191021130209.GD52694@meh.true.cz>
 <c3b0281b-d890-3afb-9a65-c5222c831ee0@marcant.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c3b0281b-d890-3afb-9a65-c5222c831ee0@marcant.net>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_070703_207612_AC6E44FD 
X-CRM114-Status: UNSURE (   9.47  )
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 4/5] target/generic: add ascii search
 option to mtd-mac-address helper
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW5kcsOpIFZhbGVudGluIDxhdmFsZW50aW5AbWFyY2FudC5uZXQ+IFsyMDE5LTEwLTIxIDE1OjEz
OjU1XToKCj4gQW0gMjEuMTAuMTkgdW0gMTU6MDIgc2NocmllYiBQZXRyIMWgdGV0aWFyOgo+ID4g
QW5kcsOpIFZhbGVudGluIDxhdmFsZW50aW5AbWFyY2FudC5uZXQ+IFsyMDE5LTEwLTIxIDE0OjMy
OjEzXToKPiA+IAo+ID4+IFRoaXMgaW1wcm92ZXMgdGhlIGZ1bmN0aW9uIG9mX2dldF9tYWNfYWRk
cmVzc19tdGQuLi4KPiA+IAo+ID4gYnV0IG9uIHRoZSBvdGhlciBoYW5kIGl0cyBhbHNvIGludHJv
ZHVjaW5nIHNvbWV0aGluZyB3aGljaCB3b3VsZCBuZXZlciBiZQo+ID4gYWNjZXB0ZWQgdXBzdHJl
YW0sIGZvciBkZXRhaWxzIHNlZSBteSBvdGhlciBjb21tZW50WzFdLgo+Cj4gSSBhbHNvIHNhdyB0
aGF0LiBJIGNvdWxkIG1vdmUgaXQgaW50byBhIHNlcGFyYXRlICJkcml2ZXIiPwoKSXQgd29uJ3Qg
aGVscCwgd2UgY2VydGFpbmx5IGRvbid0IHdhbnQgdG8gcmVhZCBjb21wbGV0ZSBmbGFzaCBwYXJ0
aXRpb24gaW50bwpSQU0ganVzdCB0byBzZWFyY2ggZm9yIHNvbWUgbmVlZGxlLCB5b3VyIGNvZGUg
aXMgaGFwcHkgd2l0aCBmaXJzdCBuZWVkbGUKb2NjdXJlbmNlIChzbWVsaW5nIGhhcmQgdG8gcmVw
cm9kdWNlIGlzc3Vlcykgc28geW91IHNob3VsZCBhaW0gZm9yIGZpeGVkCm9mZnNldCwgc28gaW4g
dGhlIGVuZCBpdCdzIFlvdXNvbmcncyBtdGQtbWFjLWFkZHJlc3MtYXNjaWlbMV0gd2hhdCB5b3Un
cmUKcHJvYmFibHkgbG9va2luZyBmb3IuCgo+IEkgYWxzbyBub3RpY2VkIHRoZSBudm1lbSBwcm92
aWRlciwgYnV0IHRoYXQgaXMgYSBiaXQgdG8gdHJpY2t5IGZvciBtZS4KCkluZGVlZCwgbWFraW5n
IHNvbWV0aGluZyBhY2NlcHRlZCB1cHN0cmVhbSBpcyB0ZWRpb3VzIGFuZCB0aW1lIGNvbnN1bWlu
Zwpwcm9jZXNzLCBidXQgaXRzIHVzdWFsbHkgd29ydGggdGhpcyBlZmZvcnQgaW4gdGhlIGxvbmd0
ZXJtIGFuZCBzaG91bGQgYmUKcHJlZmVycmVkLgoKPiA+PiBDb2RlIGhhcyBiZWVuIHRha2VuIGZy
b20gYXI3MXh4Lgo+ID4gCj4gPiBJdCBtYWtlcyBtZSB3b25kZXIgZnJvbSB3aGVyZSBleGFjdGx5
IGFzIEkgY2FuJ3Qgc2VlbSB0byBmaW5kIGl0LgoKc28gd2hlcmUgaXMgaXQgb3JpZ2luYXRpbmcg
ZnJvbT8gOi0pCgoxLiBodHRwOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTExMjQ5NS8j
MjE4OTAzMAoKLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
