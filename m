Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 709008A370
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 18:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7/WuWrjFrxmtQpS+/TEM5FR9o25ykCnxh8yYsHda0k=; b=GAjqv8qYwnWdal
	NsnahQdkpJsassmsqTuOt2+nyO2iQpU18YsrxQGFoHPmWwOimNavGoyDzGMQZovfifu7npSuTQlXc
	2WytYkxPoZYSSaQgeo0xp0Pj0d3raBgcJn9Ib6LJIfHTizVQyR0f6tXriUQiHvcbBjffLNM3EfBSv
	WNXV1W6facbYfohmL0Or0F0OI7mYAMJX0MUK2w97dx36rSJ5+egry/QGuHMhFIn3HQxfwB/hGW+Yj
	/qdYCswq0arKv/b15QZifJWNLxh34B4w9TA9y6S5m9WvULXvuE7aSXN2S7c4Ugp3zHkoQoSaGeJ1L
	64L8xJWXh6PNL9cwYFFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxDId-0005lr-RE; Mon, 12 Aug 2019 16:35:59 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxDIU-0005lV-Dc
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 16:35:51 +0000
Received: by mail-ot1-x32a.google.com with SMTP id o101so8221792ota.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 12 Aug 2019 09:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=jwYkjyxvwUisPDeEaDNl94kxXRiOM8msbjmO7BF53Kg=;
 b=ocFZvfNX1+SXwPfqgIFnJnLtMG5ZJEXr35qXFPMEIaQ4eFDGSvvIO9XNfXWJX7+Ui4
 l+K7CudFwvR4it5DXRKzGdCYuRuDyKwACOeWthE7G4+UPPz1u5hBWlvOx14Q+ORIuxks
 CR7/4GofTzkdI/EAH7czVdikKgv6kFEOr1sC81oAZBRQvw4BT7RF/tgqi69dwPO0Gsao
 UkU/n9crv3ZusjwWETIIviy9gITT7Hu9HBqQJ38owv4ZoiguY7fJLNEOcra+j5KGSb1j
 AIUkHdqOCnAYLHl5ubwz6+0D1qmxe/aUQXIsiV9zQ6LLMgaNznRgIq/vf/IShAAqsTB8
 SSVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jwYkjyxvwUisPDeEaDNl94kxXRiOM8msbjmO7BF53Kg=;
 b=Tis1uyjieb7T5jtlusMCI/Xm6zOLUYLKgkb9+VRuLI8P3vQAIDMtsM+cqBlPogiRpk
 SObequHZGsF2fZUBD/iwvhFApLg4uR8Jx4iuB53Hl4KnStRm4btkPOBkIRq2ZBezZsd0
 Ru3C2/g9DA/l0YRrGFcAfwXR0MPzJl7y/RsUFubYVyQd9Rnzkd4vYs0kMEurBa94ge3C
 pgpY7TZ1m1khY9xPH6C8wF3L5+UTu36JYcPMBqXsUN+LyYXGPYKiWP86jdYEbM5Uy8tP
 MqRSwMNQ11yUTwLM3i56JuiDTCM52kAaNrrwBQ8XVRJHL2SgBK8RcIoGgSH9+HZqj8kM
 YRtw==
X-Gm-Message-State: APjAAAVVBg7CwhmLT7fB1E4LglirI345Hsj6KOiV8cRc8X1UKf/MZttl
 ZreuvhRJfbKYP3vuODLNx7wnQM1IiKjUsFsIDeg6pQ==
X-Google-Smtp-Source: APXvYqxpt1VZoaklDJa2IK2o89SM7eQgwvN5hCPDY9XwfREJ1u4jUK+lSS7r1hLXVSZsK7BFJt+Uh1FRlw6BFZH5wVA=
X-Received: by 2002:a6b:f203:: with SMTP id q3mr19567686ioh.208.1565627748752; 
 Mon, 12 Aug 2019 09:35:48 -0700 (PDT)
MIME-Version: 1.0
References: <675C4221-5F3B-4440-A2A8-B63C92904ED3@oranjevos.nl>
 <20190812154550.GI12735@meh.true.cz>
In-Reply-To: <20190812154550.GI12735@meh.true.cz>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Mon, 12 Aug 2019 19:35:37 +0300
Message-ID: <CANoib0GPFe2i6bYEKURTE_0eC8-NKkaEUe5H8u39UQ5ha6GN3A@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_093550_462068_7C20661E 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] GitHub starts blocking developers in countries
 facing US trade sanctions
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
Cc: Paul Oranje <por@oranjevos.nl>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SSBrbm93IHRoYXQgdGhpcyBpcyBhIGJpdCBvZmYtdG9waWMgYnV0IGNhbiBhbnlvbmUgbWFpbnRh
aW5pbmcgb3BlbndydApnaXQgcmVwbyBzb2x2ZSB0aGUgcHJvYmxlbSB3aXRoIGJhbmlubmcgb2Yg
RGlnaXRhbCBPY2VhbiBzZXJ2ZXJzIGluClJ1c3NpYT8KZ2l0Lm9wZW53cnQub3JnIGlzIG5vdCBh
Y2Nlc3NpYmxlLiBUaGlzIGlzIGEgc2lkZSBlZmZlY3Qgb2YgdGhlIGZpZ2h0CmFnYWluc3QgVGVs
ZWdyYW0sIHRoYXQgd2FzIGxvcyBieSB0aGUgZ292ZXJubWVudC4KSXQgaXMgbm90IGEgcmVhbGx5
IF9iaWdfIHByb2JsZW0sIGJ1dCBpdCdzIHZlcnkgdW5jb252ZW5pZW50IHdoZW4geW91CnRyYXZl
bC4gTWF5YmUgc29tZSBJUCB0byByZWRpcmVjdD8KCtC/0L0sIDEyINCw0LLQsy4gMjAxOSDQsy4g
0LIgMTg6NDYsIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ogo+Cj4gUGF1bCBPcmFuamUg
PHBvckBvcmFuamV2b3Mubmw+IFsyMDE5LTA3LTMxIDE1OjA1OjM3XToKPgo+IEhpIFBhdWwsCj4K
PiA+IExXTiBwb3N0ZWQgYW4gYXJ0aWNsZSB3aXRoIHRoZSBhYm92ZSB0aXRsZSBbMV0gdGhhdCBy
ZWZlcnMgaXRzZWxmIHRvIGFuCj4gPiBhcnRpY2xlIG9uIFpETmV0IFsyXS4KPgo+IHRoYW5rcyBm
b3IgYnJpbmdpbmcgdGhpcyB0b3BpYyB1cCwgaXQncyBpbmRlZWQgcXVpdGUgdW5lYXN5IHNpdHVh
dGlvbiBzbyB0bwo+IHNwZWFrLiBPbiB0aGUgb3RoZXIgaGFuZCBzdWNoIGhpY2N1cHMgYXJlIHJl
YWxseSBpbXBvcnRhbnQsIGluIG9yZGVyIHRvIHJlbWluZAo+IHBlb3BsZSwgdGhhdCB0aGlzIGlz
IHNpbXBseSBwcm9wcmlldGFyeSBwbGF0Zm9ybSwgb3duZWQgYnkgYSBjb21wYW55IHdpdGgKPiBk
ZWJhdGFibGUgaGlzdG9yeSwgc28gdGhpcyBhY3Rpb25zIHNob3VsZCBiZSBleHBlY3RlZC4KPgo+
IEFueXdheSwgbW9zdCBvZiB1cyBhdHRlbmRpbmcgcmVjZW50IEhhbWJ1cmcgbWVldGluZyBiZWxp
ZXZlLCB0aGF0IHdlIHNob3VsZAo+IHRyeSB0byBjb25zb2xpZGF0ZSBvdXIgZnJhZ21lbnRlZCBk
ZXZlbG9wbWVudCBwbGF0Zm9ybXMgYW5kIGV2YWx1YXRlWzFdCj4gc2VsZi1ob3N0ZWQgR2l0TGFi
IGFzIGEgcG9zc2libGUgdmlhYmxlIG9wdGlvbiwgdGh1cyBtYWtpbmcgdGhlIHByb2plY3QKPiBz
ZWxmLXN1ZmZpY2llbnQgYW5kIHF1aXRlIHJlc2lzdGFudCB0byB0aGlzIDNyZCBwYXJ0eSBhY3Rp
b25zICh0byBzb21lIGV4dGVudAo+IG9mIGNvdXJzZSkuCj4KPiBKdXN0IHRvIGJlIGNyeXN0YWwg
Y2xlYXIsIHRoZXJlJ3Mgbm8gcGxhbiB0byBhYmFuZG9uIG9yIGxlYXZlIEdpdEh1YiwgY3VycmVu
dAo+IChzb21laG93IGJsdXJyZWQpIHZpc2lvbiBpcywgdGhhdCBHaXRMYWIgY291bGQgYmUgKGFi
KXVzZWQgYXMgYSBjZW50cmFsIHBvaW50Cj4gZm9yIGRldmVsb3BtZW50LCB3aGVyZWFzIEdpdEh1
YiBjb3VsZCBiZSBrZXB0IGFzIGl0IGlzLCBiZWluZyBzaW1wbHkgb25lIG9mCj4gdGhlIHBvc3Np
YmxlIGluY29taW5nIGNoYW5uZWxzIGZvciB0aGUgdmFsdWFibGUgY29udHJpYnV0aW9ucy4KPgo+
IDEuIGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQvcHVsbC8yMjE4Cj4KPiAtLSB5
bmV6ego+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
