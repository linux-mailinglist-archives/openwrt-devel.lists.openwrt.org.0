Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B58703B276
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Jun 2019 11:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6mirx8oqFfa3eE+HAg8UGcKbwPCMaaWtX++lOJjPr4=; b=B+8zFzhZr6Ul2X
	A0eokxc5KZglR7D9bZjFwInGLLylOYt/P+DpaKfkx0LNphCGWQUmTWKkc8FclnmbZL7WMXCwRcW9e
	2D/R/xqdlS3vXk0STtZhz41JmWnTFl+YLjGmGMONAkDcoqQcQFYfVAJe8adDizx+Iar8Wea5mDEGs
	/JbTE29IfsVhaiI0VsdQMHYY9OHNUKCktlqKymFuvgQEMDJ9RN7AFu8NgCAJIp42w7wXeSUykfdhq
	7P+ULOlreELVz1ApXhAjSv6a/mq8VDgWe2xl0aWqu1xW9MjzUExPfS0L3kBJ7Jnk4R1XDlHNmvpZO
	+FrOOh/E9+FeUJ9qZbYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haGxs-0004Ua-Nz; Mon, 10 Jun 2019 09:51:44 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haGxW-0004UD-2p
 for openwrt-devel@lists.openwrt.org; Mon, 10 Jun 2019 09:51:23 +0000
Received: by mail-qk1-x744.google.com with SMTP id d15so5140546qkl.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 10 Jun 2019 02:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=76m5UlMn9NUar+yPQsl8edGfEkN9jun178/nUAjj14k=;
 b=fgHZkbKeC1kcD61pd6xONLCO/mDffpvjdqZew28VQT1G5/mLmoSEpkaH2v2+/VnVyL
 P+ofDpa97Xh8s1D3bdeh+tTiVylTMOOdG/HwCskbNPRndzZ53FYYgTYqa5LC4K6D8Ug8
 piBv8YhrWJsBf2BkiJ3B5MV1UkFofiFYHwgKnQm05/iCoEz1A68byD32xuT1eY/QuQMO
 VQit8E2dGMACOtYcyEbjsczCoSWGOOVqgvLW60+su8lOlBtCI4J+IMVfMeadNdzVvejB
 xuGGskT8nR6eC39OL3Al3uIgaB66xe60ZmD6/mC+IT4rP2AFg3+Z0nsmCWv/8aZn7jNi
 hUxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=76m5UlMn9NUar+yPQsl8edGfEkN9jun178/nUAjj14k=;
 b=FsK6gxCQDjYXm0yfc8l1V7u6y2DS1gy1cxPa5obFC508yTzMF25mIn6KP6QP7OcmnU
 0uBAATIWmsQOWOG1zk3SEH9UuLKsZWZZLZZZnsjhs1UWJRGMsTQj0ciVnnPxOYP/7MfH
 0cCCAbdhsE/W8thO8HAEQBSov4TuMEt7rb//pxAaHS8jzaF1Dtk/6N8xluXLolXT2SA8
 ALfRwvQvfuwa+wQNEwQanbMjEZtdizOlQLglNqTJhHZZRby3qwQxSZ2Hk1dq6YI8Upoq
 EISBLzu4XruGHSVplEqQPmtIM4afrxE1ydfuLUCinkf3uWMf+2WOFOn9xC2eLnMAR5dj
 UGIQ==
X-Gm-Message-State: APjAAAUs6Rd6xV+G5goOlyqSqrhHC05D+uDxydDC0PXnuNhbxGnREEaQ
 Ss4vU9Jl9R8FXqln8gLiDfWPpTrp27J73SrCcuA=
X-Google-Smtp-Source: APXvYqyrUwY941eHK5Raz4SdJKHQPecQXuNewV5axpef2pJiYS2yGHzsEk1fmKPrTZD3ZHp/xPJG9uJz7GMbuMhnoRI=
X-Received: by 2002:a37:aa4d:: with SMTP id t74mr56291170qke.144.1560160280521; 
 Mon, 10 Jun 2019 02:51:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAKjzzGMjFpe3dVo=hDr+nfmtsgX3od3Us7TDji=31NBzdbtmmw@mail.gmail.com>
 <20190610065228.GC39806@meh.true.cz>
In-Reply-To: <20190610065228.GC39806@meh.true.cz>
From: Kristupas Savickas <savickas.kristupas@gmail.com>
Date: Mon, 10 Jun 2019 12:51:09 +0300
Message-ID: <CAKjzzGNg4e0io5D9xkKtyT2fGBOXvxK4+7dwyLFyJmdWwi8GAw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_025122_154546_AC955F3E 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (savickas.kristupas[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] libubox: add format string checking
 to ulog()
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpzb3JyeSBhYm91dCB0aGF0LCBmaXhlZC4KCkZyb20gNDQ2NGYwZWMyN2FhNmMyYzk2YjU1
ZDM3YTVlYWIwOTAzMjU2MjFjOSBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKRnJvbTogS3Jpc3R1
cGFzIFNhdmlja2FzIDxrcmlzdHVwYXMuc2F2aWNrYXNAZ21haWwuY29tCkRhdGU6IE1vbiwgMTAg
SnVuIDIwMTkgMTI6MzY6NTAgKzAzMDAKU3ViamVjdDogW1BBVENIXSBsaWJ1Ym94OiBhZGQgZm9y
bWF0IHN0cmluZyBjaGVja2luZyB0byB1bG9nKCkKVG86IHluZXp6QHRydWUuY3oKQ2M6IG9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKClRoaXMgb2ZmZXJzIGFuIGluY3JlYXNlZCBsZXZl
bCBvZiBzZWN1cml0eSwgYXMgdGhlIGFyZ3VtZW50cyB3aWxsIGJlCmNoZWNrZWQgZm9yIHZhbGlk
aXR5IGFnYWluc3QgdGhlIGZvcm1hdCBzdHJpbmcgYXQgY29tcGlsZSB0aW1lLiBUaGUKZm9ybWF0
IGF0dHJpYnV0ZSBpcyBzdXBwb3J0ZWQgYnkgYm90aCBHQ0MgYW5kIENsYW5nLCBzbyB0aGVyZSBz
aG91bGRuJ3QKYmUgYW55IHBvcnRhYmlsaXR5IGlzc3Vlcy4KClNpZ25lZC1vZmYtYnk6IEtyaXN0
dXBhcyBTYXZpY2thcyA8a3Jpc3R1cGFzLnNhdmlja2FzQGdtYWlsLmNvbT4KLS0tCiB1bG9nLmgg
fCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL3Vsb2cuaCBiL3Vsb2cuaAppbmRleCA0ODE4YjFhLi44NTcwMmVjIDEwMDY0
NAotLS0gYS91bG9nLmgKKysrIGIvdWxvZy5oCkBAIC0zMiw3ICszMiw4IEBAIHZvaWQgdWxvZ19j
bG9zZSh2b2lkKTsKCiB2b2lkIHVsb2dfdGhyZXNob2xkKGludCB0aHJlc2hvbGQpOwoKLXZvaWQg
dWxvZyhpbnQgcHJpb3JpdHksIGNvbnN0IGNoYXIgKmZtdCwgLi4uKTsKK3ZvaWQgdWxvZyhpbnQg
cHJpb3JpdHksIGNvbnN0IGNoYXIgKmZtdCwgLi4uKQorICAgICAgIF9fYXR0cmlidXRlX18gKChm
b3JtYXQgKHByaW50ZiwgMiwgMykpKTsKCiAjZGVmaW5lIFVMT0dfSU5GTyhmbXQsIC4uLikgdWxv
ZyhMT0dfSU5GTywgZm10LCAjIyBfX1ZBX0FSR1NfXykKICNkZWZpbmUgVUxPR19OT1RFKGZtdCwg
Li4uKSB1bG9nKExPR19OT1RJQ0UsIGZtdCwgIyMgX19WQV9BUkdTX18pCi0tIAoyLjIxLjAKCk9u
IE1vbiwgSnVuIDEwLCAyMDE5IGF0IDk6NTIgQU0gUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBLcmlzdHVwYXMgU2F2aWNrYXMgPHNhdmlja2FzLmtyaXN0dXBhc0BnbWFp
bC5jb20+IFsyMDE5LTA2LTA2IDIxOjQzOjIzXToKPgo+IEhpLAo+Cj4gPiBGcm9tIGI2NTllYTVm
YzY1MTFmOWY1OGYwNGNhNGViNTg2OThhYTgzODZmMTEgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAx
Cj4gPiBGcm9tOiBLcmlzdHVwYXMgU2F2aWNrYXMgPHNhdmlja2FzLmtyaXN0dXBhc0BnbWFpbC5j
b20+Cj4gPiBEYXRlOiBUaHUsIDYgSnVuIDIwMTkgMjE6Mjg6MzIgKzAzMDAKPiA+IFN1YmplY3Q6
IFtQQVRDSCAxLzFdIGxpYnVib3g6IGFkZCBmb3JtYXQgc3RyaW5nIGNoZWNraW5nIHRvIHVsb2co
KQo+ID4gVG86IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiA+Cj4gPiBUaGlzIG9m
ZmVycyBhbiBpbmNyZWFzZWQgbGV2ZWwgb2Ygc2VjdXJpdHksIGFzIHRoZSBhcmd1bWVudHMgd2ls
bCBiZQo+ID4gY2hlY2tlZCBmb3IgdmFsaWRpdHkgYWdhaW5zdCB0aGUgZm9ybWF0IHN0cmluZyBh
dCBjb21waWxlIHRpbWUuIFRoZQo+ID4gZm9ybWF0IGF0dHJpYnV0ZSBpcyBzdXBwb3J0ZWQgYnkg
Ym90aCBHQ0MgYW5kIENsYW5nLCBzbyB0aGVyZSBzaG91bGRuJ3QKPiA+IGJlIGFueSBwb3J0YWJp
bGl0eSBpc3N1ZXMuCj4KPiBBcHBseWluZzogbGlidWJveDogYWRkIGZvcm1hdCBzdHJpbmcgY2hl
Y2tpbmcgdG8gdWxvZygpCj4gZmF0YWw6IGNvcnJ1cHQgcGF0Y2ggYXQgbGluZSAxNAo+IFBhdGNo
IGZhaWxlZCBhdCAwMDAxIGxpYnVib3g6IGFkZCBmb3JtYXQgc3RyaW5nIGNoZWNraW5nIHRvIHVs
b2coKQo+Cj4gLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
