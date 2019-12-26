Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E76F012AF6A
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Dec 2019 23:50:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bpMiI7xwBMgqhKQHpMbnJoBnax9e5W6H3vf/hu94Ayw=; b=Mh84W82Uw5bcqF
	yOD86wKT2KXkPNLnMfpxpfiuaXJPrQKHP5aKGNqYauKSrFWJ+qdzvXQpnQHqK55FJVT/LcF2WLncT
	UnhBmR0SRwlZbb6gbGEV/Hf+cnm8xb4enXgHoIk+EFbMJwgtDxRZv4VWK1F6cCD0v29/Q39zHCLfG
	8CTVLnKueM/0pgGYdhL0EZiZeG9rXsdGhf3WDbl/6dlbk2XeZQPbjy6DhiWWYqrxiYEsFP7BdqDg1
	WpcJAcpPYFUeo2TKHehDt8clATKpOX/piF+6C4QfZBGxbYT1IYOYmlaV9e7OABSasmDrTwyHBQ8M1
	XCzZlFcfv4oRGeapPx/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikbxT-0007Hr-70; Thu, 26 Dec 2019 22:50:19 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikbxH-0006hm-EK
 for openwrt-devel@lists.openwrt.org; Thu, 26 Dec 2019 22:50:08 +0000
Received: by mail-ot1-x342.google.com with SMTP id 66so33983847otd.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Dec 2019 14:50:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=i4AGXJU13tfWcv8581OkAycjz8pNBpVlpi8IbsUqlyI=;
 b=As/0mUYqkxG1nlazweR/2XhJ1/hAR2CQeo8doNCwN+xihVeunYpafFMyT5WryroIQ0
 hh0fw6fneOG4xvjEswo+BGSRgTZin93x2+OTDYPOx6G7d7GjIz6PNFBSI1ceP1Suq1nd
 vk+RZFdlGqm1zVeDu9iG3jYNlp9UFsC3LZa+GY88wpi2IGx18g0krAEw/+dWc16aWuqS
 2KN+q7uNyNVsO14M3erS+t/srvHd3RI0mVu8jDUD1RlbpR07mhDiEwsgOyQwhq8AXUuc
 NA81j0c4EbtFRdb65AtMlSTDKcprfqnJwnmUiYe25nfdnWy+/Nv72Gzj5szUAgY/M31V
 VJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=i4AGXJU13tfWcv8581OkAycjz8pNBpVlpi8IbsUqlyI=;
 b=T5iZ79MkokD4EkmuUxoqdqInWBKjENbtrKwWIyAH7C/9KxqXx0XAzhEKRbrmg1vhcR
 IEyh5Ki0uW1kkye/D3KStXJXD92HCA9Plm5KpJhpvkiL9/2Oqy8SX6Ib0FHQxTA5SKZU
 7YEQtG9/bR7Q9s6IohHa+ji/OnEN4XLVlmvUCMUGpQqiBs/2lK7A6UnhFZVGSfrl0nA/
 HD+QMg3LlBcDs4exLHfS54uFUAbh1VdiKO1QOfCXowKxAlzAMJi0pjGsGpRT/H9redhe
 m7Cw6OhGb03f9qvqxKdCbVSnDqBkuQIdsgnRvnEVNTsm5QcSMdZWCYMQUjZ7gQkhWSOV
 /sNw==
X-Gm-Message-State: APjAAAU1WqoKCqJM81zZ8LwZYA6cUlygWANde/Zg8DxjefUm0nAZfwFr
 sLcluxCnWzUPblXiMrUUP7pCZD1NfqnW3b+l/CU=
X-Google-Smtp-Source: APXvYqytSZet/5H6ZDXvOIfQq80KNU8HKzR2ZozjqDt0bBuJc/2DzDt4fotCnyv6NEygQYOC+DlJ9QZP4C3X5ucxTJU=
X-Received: by 2002:a9d:7f11:: with SMTP id j17mr55282044otq.281.1577400605431; 
 Thu, 26 Dec 2019 14:50:05 -0800 (PST)
MIME-Version: 1.0
References: <20191224180213.3542623-1-raj.khem@gmail.com>
 <20191224215051.GF70645@meh.true.cz>
 <b3d98fd9-34a0-31cc-c4ce-c311bcec3d38@hauke-m.de>
 <CAMKF1soqVxRsawUbHYmL1QFO-n6OXF_5Xh0WyxYuReOgv692uQ@mail.gmail.com>
In-Reply-To: <CAMKF1soqVxRsawUbHYmL1QFO-n6OXF_5Xh0WyxYuReOgv692uQ@mail.gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Thu, 26 Dec 2019 14:49:54 -0800
Message-ID: <CAKxU2N-bi5=w-OefjJ3uD2mkwJwcZx+pwMDHP04XxRvrOpAu3Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_145007_497412_6A3E6ED3 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] use strncpy instead of strcpy
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVGh1LCBEZWMgMjYsIDIwMTkgYXQgMjozMiBQTSBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwu
Y29tPiB3cm90ZToKPgo+IE9uIFRodSwgRGVjIDI2LCAyMDE5IGF0IDQ6NTAgQU0gSGF1a2UgTWVo
cnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+IHdyb3RlOgo+ID4KPiA+IE9uIDEyLzI0LzE5IDEwOjUw
IFBNLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+ID4gPiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwu
Y29tPiBbMjAxOS0xMi0yNCAxMDowMjoxM106Cj4gPiA+Cj4gPiA+IEhpLAo+ID4gPgo+ID4gPiB1
c2UgIlBBVENIIGxpYnVib3giIHN1YmplY3QgcHJlZml4LCBiZWNhdXNlIHRoZXJlIGlzIG5vIGJs
b2Jtc2cuYyBmaWxlIGluIHRoZQo+ID4gPiBtYWluIHRyZWUuCj4gPiA+Cj4gPiA+PiBGaXhlcyBl
cnJvcjogJ19fYnVpbHRpbl9zdHJjcHknIG9mZnNldCA2IGZyb20gdGhlIG9iamVjdCBhdCAnYXR0
cicgaXMgb3V0IG9mCj4gPiA+PiB0aGUgYm91bmRzIG9mIHJlZmVyZW5jZWQgc3Vib2JqZWN0ICdu
YW1lJyB3aXRoIHR5cGUgJ3VpbnQ4X3RbMF0nIHtha2EKPiA+ID4+ICd1bnNpZ25lZCBjaGFyWzBd
J30gYXQgb2Zmc2V0IDYgWy1XZXJyb3I9YXJyYXktYm91bmRzXQo+ID4gPgo+ID4gPiBvdXQgb2Yg
Y3VyaW9zaXR5LCB3aGljaCB0YXJnZXQvY29tcGlsZXIgaXMgdGhhdD8gSSdtIG5vdCBhYmxlIHRv
IHJlcHJvZHVjZQo+ID4gPiBpdCBvbiBhbnkgb2YgdGhlIHByZS1zZWxlY3RlZCBDSSB0YXJnZXRz
WzFdLgo+ID4KPiA+IEhpIFBldHIsCj4gPgo+ID4gVGhlIGZvcnRpZnkgaGVhZGVycyBhcmUgcHJl
dmVudGluZyBzb21lIG9mIHRoZXNlIHdhcm5pbmdzLCBJIHNlZSB0aGVtCj4gPiB3aGVuIGNvbXBp
bGluZyB3aXRob3V0IGZvcnRpZnkgaGVhZGVyIG9yIHdoZW4gdXNpbmcgZ2xpYmMuCj4gPgo+ID4g
SSBzdGFydGVkIHRvIGxvb2sgaW50byB0aGlzIHByb2JsZW0sIGJ1dCBpdCBsb29rcyBtb3JlIGNv
bXBsaWNhdGVkIHRvCj4gPiBjaGFuZ2UgdGhlIGZvcnRpZnkgaGVhZGVycyBpbiBhIHdheSwgdGhh
dCB0aGUgY29tcGlsZSB0aW1lIGJ1ZmZlcgo+ID4gb3ZlcmZsb3cgZGV0ZWN0aW9uIHN0aWxsIHdv
cmtzIGxpa2UgZXhwZWN0ZWQgZm9yIGFsbCBmdW5jdGlvbnMgd2hpY2ggYXJlCj4gPiBzdXBwb3J0
ZWQgYnkgZ2NjLgpJIHBlcnNvbmFsbHkgcmVtb3ZlIHRoaXMgbGluZSBpbiBteSB0cmVlOgpodHRw
czovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L2Jsb2IvbWFzdGVyL3J1bGVzLm1rI0wyMDAK
Ckl0J3MgZnVubnkgdGhhdCBmb3J0aWZ5LWhlYWRlcnMgZXhwb3NlIGEgZGlmZmVyZW50IGJ1ZyBh
cyB3ZWxsLgpsaW1pdHMuaCBlbmRzIHVwIGJlaW5nIGltcGxpY2l0bHkgaW5jbHVkZWQuIFdoZW4g
cmVtb3ZpbmcKZm9ydGlmeS1oZWFkZXJzLCBzZXZlcmFsIHBhY2thZ2VzIGVuZCB1cCBuZWVkaW5n
IGxpbWl0cy5oIChJJ3ZlIGZpeGVkCnNvbWUgb2YgdGhlbSkuCj4gPgo+Cj4gSSBkbyB1c2UgdGhl
c2UgZmxhZ3MKPiAtZnN0YWNrLXByb3RlY3Rvci1zdHJvbmcgIC1EX0ZPUlRJRllfU09VUkNFPTIg
LVdmb3JtYXQKPiAtV2Zvcm1hdC1zZWN1cml0eSAtV2Vycm9yPWZvcm1hdC1zZWN1cml0eQotV2Zv
cm1hdD0yIGV4cG9zZXMgbW9yZSB3YXJuaW5ncwoKTm90ZSB0aGF0IGZpeGluZyB0aGVtIGhlbHBz
IHdpdGggcmVkdWNpbmcgY29tcGlsZWQgc2l6ZS4KCj4KPiBhbmQgcGVyaGFwcyB0aGF0IGNvbWJp
bmVkIHdpdGggZ2NjMTAgZXhwb3NlcyB0aGlzIGlzc3VlLgo+Cj4gPiBQbGVhc2UgYWxzbyB1c2Ug
YSB0b29sY2hpYW4gd2l0aCBnbGliYyB3aGVuIGNvbXBpbGluZyBpbiBDSS4KPiA+Cj4gPiBIYXVr
ZQo+ID4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
