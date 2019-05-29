Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD27A2D50D
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 May 2019 07:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R/kDh7Q0iyLdPoOwrryxQgYY008UvxEngnfQiSnMbnA=; b=aUoxYcggSMyvO3UCl+b57g0KDY
	sjodsB5V7EGufWr5ouiR5Z/B1J2iPoePp9janRA4nkUXvZqNttleWxi10KGe4xn2mA9NX26P053ww
	zNrcvflIB6pI3xnhCtGGZW0wO6nyWkjDjTGVA3NCCsQ93fevQ882KcIP/QR9A7QHulDAKnTwetyDC
	q8sULZPueca+q3pTyG+fRS/WX0dD0OPL8WZ2IoMuePL+eTlvH1M2O/Wha95RN20W12kPCM82QRmfT
	IjM/YjMQ6+fnLvJmAKr5G9mfUUDF8W2jVdKEvLbT2K18BB8rdNPCisI8eFz+djqzzG/TEut37ETx6
	Tm5Xacng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVr2P-0005P1-P4; Wed, 29 May 2019 05:22:09 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVr2J-0005Oa-6Q
 for openwrt-devel@lists.openwrt.org; Wed, 29 May 2019 05:22:04 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id AC21B34CB;
 Wed, 29 May 2019 07:21:59 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id cfa51721;
 Wed, 29 May 2019 07:21:58 +0200 (CEST)
Date: Wed, 29 May 2019 07:21:58 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20190529052158.GD13432@meh.true.cz>
References: <1558992584-11997-1-git-send-email-ynezz@true.cz>
 <1558992584-11997-5-git-send-email-ynezz@true.cz>
 <CAECwjAhOUfNqaN2Y2J3_eeKsO6cewZOP2q9P2nS2kGRqP=Mh4w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAECwjAhOUfNqaN2Y2J3_eeKsO6cewZOP2q9P2nS2kGRqP=Mh4w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_222203_387375_39EB951E 
X-CRM114-Status: GOOD (  15.38  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 4/4] build: add urandom-seed and urngd
 to default packages set
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Cc: Stephan =?utf-8?Q?M=C3=BCller?= <smueller@chronox.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

WW91c29uZyBaaG91IDx5c3pob3U0dGVjaEBnbWFpbC5jb20+IFsyMDE5LTA1LTI5IDEwOjI1OjUy
XToKCj4gT24gVHVlLCAyOCBNYXkgMjAxOSBhdCAwNTozMCwgUGV0ciDFoHRldGlhciA8eW5lenpA
dHJ1ZS5jej4gd3JvdGU6Cj4gPgo+ID4gdXJhbmRvbS1zZWVkIGNvbnRlbnQgd2FzIHNwbGl0IGZy
b20gYmFzZS1maWxlcyBpbnRvIHNlcGFyYXRlIHBhY2thZ2Ugc28KPiA+IGluIG9yZGVyIHRvIHBy
ZXNlcnZlIHRoZSBjdXJyZW50IGZ1bmN0aW9uYWxpdHkgYW5kIHRvIHByb3ZpZGUgc29tZQo+ID4g
ZmFsbGJhY2sgbWVjaGFuaXNtIGluIGNhc2UgamVudC1ybmcgaW5pdGlhbGl6YXRpb24gZmFpbHMg
aW4gdXJuZ2Qgd2UKPiA+IG5lZWQgdG8gYWRkIGl0IGJhY2suCj4gPgo+ID4gdXJuZ2QgaXMgT3Bl
bldydCdzIG1pY3JvIG5vbi1waHlzaWNhbCB0cnVlIHJhbmRvbSBudW1iZXIgZ2VuZXJhdG9yIGJh
c2VkCj4gPiBvbiB0aW1pbmcgaml0dGVyLgo+IAo+IElmIEkgdW5kZXJzdGFuZCB0aGUgcGF0Y2gg
Y29ycmVjdGx5IGl0IHNlZW1zIHRoZSB1cmFuZG9tLXNlZWQgd2lsbCBydW4KPiBhbG9uZyBzaWRl
IHdpdGggdXJuZ2QsIG5vdCBhIGZhbGxiYWNrLiAgCgphbG9uZyBzaWRlIHdpdGggdXJuZ2QsIG5v
dCBhcyBhIGZhbGxiYWNrLCBqdXN0IHRvIGtlZXAgdGhlIGN1cnJlbnQgc3RhdGUuIEl0J3MKbm90
IGEgZmFsbGJhY2sgYXMgdXJhbmRvbS1zZWVkIGRvZXNuJ3QgcHJvdmlkZSBpbnB1dCB3aGljaCBp
cyB0cnVzdGVkIGJ5Cmtlcm5lbCBhcyB1cmFuZG9tLXNlZWQgaXMganVzdCBmZWVkaW5nIHVyYW5k
b20uc2VlZCBmaWxlIHRvIGtlcm5lbCB0aHJvdWdoCi9kZXYvdXJhbmRvbSBmaWxlLCBhbmQgdGhp
cyBpbnB1dCBpcyBuZXZlciB0cnVzdGVkIGJ5IGtlcm5lbCBzbyBpdCdzIGp1c3QKYmVpbmcgYWRk
ZWQgdG8gdGhlIGVudHJvcHkgcG9vbCwgd2l0aG91dCBhbnkgY3JlZGliaWxpdHkuCgo+IElzIHVy
YW5kb20tc2VlZCBhIG11c3QsIG9yIG9ubHkgc2VydmUgYXMgYSBwcmVjYXV0aW9uIGp1c3QgaW4g
Y2FzZT8KCml0J3Mgbm90IGEgbXVzdCwgNC4xNCBrZXJuZWwgKGRpZG4ndCBjaGVja2VkIDQuOSkg
Y2FuIGNvbGxlY3QgZ29vZCBlbm91Z2gKZW50cm9weSBieSBpdHNlbGYuIHVyYW5kb20tc2VlZCBp
cyBqdXN0IGFkZGluZyBzb21lIGtpbmQgb2YgNTEyIGJ5dGUgbm9pc2UKKHdoaWNoIHdlIGNvbGxl
Y3Qgb25seSBvbiB0aGUgZmlyc3QgYm9vdCkgdG8gdGhlIGtlcm5lbCBlbnRyb3B5IHBvb2wsIHdo
aWNoIGlzCnRoZW4gYmVpbmcgbWl4ZWQgd2l0aCBvdGhlciBrZXJuZWwgc291cmNlcyBpbiBvcmRl
ciB0byBwcm92aWRlIHVzYWJsZSBub2lzZSB0bwovZGV2L3JhbmRvbS4KCj4gSWYgdXJuZ2QgY2Fu
IHNvbHZlIHRoZSBwcm9ibGVtIHdoYXQgdXJhbmRvbS1zZWVkIGlzIGZvciwgSSB3b3VsZAo+IHN1
Z2dlc3Qgd2UgbWFrZSB1cmFuZG9tLXNlZWQgYW4gb3B0LWluIG9wdGlvbiwgbm90IGluY2x1ZGVk
IGJ5Cj4gZGVmYXVsdC4KClRoYXQgd2FzIG15IHBsYW4gaW4gUkZDIHNlcmllcywgYnV0IGFzIHdl
IGRvbid0IGtub3cgeWV0IHdoZXJlIHVybmdkIHdvcmtzLApJJ3ZlIGtlcHQgaXQgZm9yIG5vdy4g
V2UgY2FuIHRoZW4gcHJvYmFibHkgcmVtb3ZlIHVyYW5kb20tc2VlZCBpbiB0aG9zZQpwbGF0Zm9y
bXMsIHdoZXJlIHdlJ3JlIHN1cmUsIHRoYXQgdXJuZ2Qgd29ya3MgYW5kIGlmIHdlIGZpbmQgb3V0
LCB0aGF0IGl0J3MKanVzdCBtdDc2MjAgaGF2aW5nIGlzc3VlcywgdGhlbiB3ZSBjYW4gbWFrZSBp
dCBvcHQtaW4gYnkgZGVmYXVsdCAocmVtb3ZlCnVyYW5kb20tc2VlZCBmcm9tIHRoZSBnbG9iYWwg
ZGVmYXVsdCBwYWNrYWdlcykgYW5kIGFkZCB1cmFuZG9tLXNlZWQganVzdCB0bwp0aGUgbXQ3NjIw
IGRlZmF1bHQgcGFja2FnZSBzZXQuCgotLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
